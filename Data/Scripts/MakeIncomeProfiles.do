clear

cd ..
cd Extracted

use MainDataAll.dta
keep if Eligible == 1
gen HHIDPN = HHID + PN
order HHIDPN
gen Cohort = ceil((YearBorn - 1909)/2)
keep if Cohort >= 1 & Cohort <= 18

gen Price = .
replace Price = 152.6 if Year == 1996 & From1995 == 1
replace Price = 156.7 if Year == 1996 & From1995 == 0
replace Price = 162.8 if Year == 1998
replace Price = 172.2 if Year == 2000
replace Price = 179.6 if Year == 2002
replace Price = 188.9 if Year == 2004
replace Price = 201.8 if Year == 2006
replace Price = 217.47 if Year == 2008
replace Price = 217.26 if Year == 2010
replace TotalIncome = TotalIncome/Price
replace TotalIncome = TotalIncome*172.2

sort HHIDPN Year
gen Ones = 1
bysort HHIDPN: egen Count = sum(Ones)
preserve
bysort HHIDPN: keep if _n == 1
tab Count
tab Cohort
restore

gen DiscountInc = .
bysort HHIDPN: replace DiscountInc = TotalIncome if Count == 1
bysort HHIDPN: replace DiscountInc = (TotalIncome + TotalIncome[_n+1])/2 if Count > 1 & _n == 1
sort Cohort Sex DiscountInc
bysort Cohort Sex: gen CoSexRank = sum(Ones) if DiscountInc != .
bysort Cohort Sex: egen CoSexCount = sum(Ones) if DiscountInc != .
gen IncPercentile = CoSexRank/CoSexCount
gen IncQuintA = ceil(IncPercentile*5)
replace IncQuintA = 0 if IncQuintA == .
bysort HHIDPN: egen IncQuint = sum(IncQuintA)
drop IncQuintA CoSexCount CoSexRank DiscountInc IncPercentile

gen Useable = 0
sort HHIDPN Year
bysort HHIDPN: replace Useable = 1 if Year[_n+1] == Year + 2
gen TempAge = ceil((CurrentAge - 64)/2)
bysort HHIDPN: gen IncGrowth = log(TotalIncome[_n+1]/TotalIncome) if Useable == 1
gen AvgGrowth = .
forvalues age = 1(1)18 {
    quietly summarize IncGrowth if TempAge == `age', detail
    replace AvgGrowth = exp(r(mean)) if TempAge == `age'
}

preserve
keep if Useable
sort TempAge
bysort TempAge: keep if _n == 1
replace AvgGrowth = 0.972 if TempAge >= 16
gen CumGrowth = 1 if TempAge == 1 
forvalues j = 2(1)18 {
    replace CumGrowth = CumGrowth[_n-1]*AvgGrowth if TempAge == `j'
}
keep TempAge CumGrowth
sort TempAge
set obs 21
replace TempAge = 18 if _n == 18
replace TempAge = 19 if _n == 19
replace TempAge = 20 if _n == 20
replace TempAge = 21 if _n == 21
replace CumGrowth = .972*CumGrowth[_n-1] if TempAge == 18
replace CumGrowth = .972*CumGrowth[_n-1] if TempAge == 19
replace CumGrowth = .972*CumGrowth[_n-1] if TempAge == 20
replace CumGrowth = .972*CumGrowth[_n-1] if TempAge == 21
sort TempAge
save CumGrowth.dta, replace
restore

sort TempAge
merge m:1 TempAge using CumGrowth.dta, sorted
drop if Sex == 0
drop if IncQuint == 0
gen TypeNum = (Cohort - 1)*10 + (2 - Sex)*5 + IncQuint
bysort TypeNum TempAge: egen TypeAgeCount = sum(Ones)
gen FittedInc = .
forvalues t = 1(1)180 {
    forvalues a = 1(1)18 {
        quietly summarize TotalIncome if TypeNum == `t' & TempAge == `a', detail
        replace FittedInc = r(p50) if TypeNum == `t' & TempAge == `a' & r(N) >= 10
    }
}

preserve
bysort HHIDPN: keep if _n == 1
keep HHIDPN TypeNum
sort HHIDPN
save IDtypeList.dta, replace
restore

preserve
gen AdjInc = TotalIncome/CumGrowth
tabulate TypeNum, gen(type)
regress AdjInc type*
predict FittedLevel, xb
bysort TypeNum: keep if _n == 1
keep TypeNum FittedLevel
sort TypeNum
save FittedLevel.dta, replace
restore

keep TypeNum TempAge FittedInc CumGrowth
bysort TypeNum TempAge: keep if _n == 1
keep if FittedInc != .
order TypeNum TempAge

gen ObsType = 1
forvalues t = 1(1)180 {
    forvalues a = 1(1)21 {
        quietly summarize FittedInc if TypeNum == `t' & TempAge == `a', detail
        local new = _N + 1
        set obs `new'
        replace TypeNum = `t' if _n == _N & r(N) == 0
        replace TempAge = `a' if _n == _N & r(N) == 0
        replace ObsType = 2 if _n == _N & r(N) == 0
    }
}
keep if ObsType != .
sort TempAge
merge m:1 TempAge using CumGrowth.dta, update
sort TypeNum TempAge
drop _merge

gen TypeMin = .
gen TypeMax = .
forvalues t = 1(1)180 {
    quietly summarize TempAge if TypeNum == `t' & ObsType == 1, detail
    replace TypeMin = r(min) if TypeNum == `t'
    replace TypeMax = r(max) if TypeNum == `t'
}
bysort TypeNum: replace FittedInc = CumGrowth*(FittedInc[TypeMin]/CumGrowth[TypeMin]) if TempAge < TypeMin
bysort TypeNum: replace FittedInc = CumGrowth*(FittedInc[TypeMax]/CumGrowth[TypeMax]) if TempAge > TypeMax
replace ObsType = 3 if ObsType == 2 & FittedInc != .

merge m:1 TypeNum using FittedLevel.dta
replace FittedInc = CumGrowth*FittedLevel if TypeMin == .
replace ObsType = 4 if ObsType == 2 & FittedInc != .
drop _merge
drop if TypeNum == .

sort TypeNum TempAge
bysort TypeNum: replace FittedInc = (FittedInc[_n-1] + FittedInc[_n+1])/2 if FittedInc == . & FittedInc[_n-1] != . & FittedInc[_n+1] != .
replace ObsType = 5 if ObsType == 2 & FittedInc != .

keep TypeNum TempAge FittedInc
sort TypeNum TempAge
rename TempAge Age
rename FittedInc y
replace y = y/10000
replace y = 2*y
reshape wide y, i(TypeNum) j(Age)
sort TypeNum
gen MaxWealth = 0.0
order TypeNum MaxWealth
save IncomeProfiles.dta, replace

clear
cd ..
cd Scripts

