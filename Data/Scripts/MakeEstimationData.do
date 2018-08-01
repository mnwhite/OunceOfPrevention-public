cd ..
cd Extracted

clear all
set more off
set mem 1000000
use MainDataAll.dta

gen HHIDPN = HHID + PN
sort HHIDPN
merge m:1 HHIDPN using IDtypeList.dta
keep HHIDPN Year Eligible TypeNum TotalWealth TotalOOPAssigned
sort HHIDPN Year
merge m:1 HHIDPN Year using HealthData.dta, sorted
keep if _merge == 3
keep if Eligible == 1
keep if TypeNum != .

sort HHIDPN Year
gen FirstOb = 0
bysort HHIDPN: replace FirstOb = 1 if _n == 1

drop _merge
order HHIDPN Year
append using ExitSimpleData.dta
replace HLevel = 0 if Health == 6
drop Health

replace Eligible = 0 if Eligible == .
bysort HHIDPN: egen ElgCount = sum(Eligible)
keep if ElgCount > 0
drop ElgCount
replace FirstOb = 0 if FirstOb == .

rename HHIDPN ID
drop Eligible
rename TotalWealth Wealth
rename TotalOOPAssigned MedOOP
rename HLevel Health
order ID TypeNum Year
sort ID Year
bysort ID: replace TypeNum = TypeNum[1] if TypeNum == .
replace Wealth = Wealth/10000
replace MedOOP = MedOOP/10000

gen Price = .
replace Price = 156.7 if Year == 1996
replace Price = 162.8 if Year == 1998
replace Price = 172.2 if Year == 2000
replace Price = 179.6 if Year == 2002
replace Price = 188.9 if Year == 2004
replace Price = 201.8 if Year == 2006
replace Price = 217.47 if Year == 2008
replace Price = 217.26 if Year == 2010
replace Wealth = Wealth*172.2/Price
replace MedOOP = MedOOP*172.2/Price
drop Price

reshape wide Wealth Health MedOOP FirstOb, i(ID) j(Year)

gen FirstSeen = .
replace FirstSeen = 1996 if FirstOb1996 == 1
replace FirstSeen = 1998 if FirstOb1998 == 1
replace FirstSeen = 2000 if FirstOb2000 == 1
replace FirstSeen = 2002 if FirstOb2002 == 1
replace FirstSeen = 2004 if FirstOb2004 == 1
replace FirstSeen = 2006 if FirstOb2006 == 1
replace FirstSeen = 2008 if FirstOb2008 == 1
replace FirstSeen = 2010 if FirstOb2010 == 1
*drop if FirstSeen == 2010
drop FirstOb*
order ID TypeNum FirstSeen

replace Health1998 = 0 if Health1996 == 0
replace Health2000 = 0 if Health1998 == 0
replace Health2002 = 0 if Health2000 == 0
replace Health2004 = 0 if Health2002 == 0
replace Health2006 = 0 if Health2004 == 0
replace Health2008 = 0 if Health2006 == 0
replace Health2010 = 0 if Health2008 == 0

replace MedOOP1996 = -1
replace MedOOP1998 = -1 if Health1998 == 0
replace MedOOP2000 = -1 if Health2000 == 0
replace MedOOP2002 = -1 if Health2002 == 0
replace MedOOP2004 = -1 if Health2004 == 0
replace MedOOP2006 = -1 if Health2006 == 0
replace MedOOP2008 = -1 if Health2008 == 0
replace MedOOP2010 = -1 if Health2010 == 0

replace Wealth1998 = Wealth1996 if Health1998 == 0
replace Wealth2000 = Wealth1998 if Health2000 == 0
replace Wealth2002 = Wealth2000 if Health2002 == 0
replace Wealth2004 = Wealth2002 if Health2004 == 0
replace Wealth2006 = Wealth2004 if Health2006 == 0
replace Wealth2008 = Wealth2006 if Health2008 == 0
replace Wealth2010 = Wealth2008 if Health2010 == 0

gen InitWealth = .
gen InitHealth = .
forvalues y = 1996(2)2010 {
    replace InitWealth = Wealth`y' if FirstSeen == `y'
    replace InitHealth = Health`y' if FirstSeen == `y'
}
drop if InitWealth < -0.3
drop if InitWealth > 800
forvalues y = 1996(2)2010 {
    replace Wealth`y' = 0 if Wealth`y' < 0
}

forvalues y = 1996(2)2010 {
    replace Wealth`y' = -1 if FirstSeen > `y'
    replace Health`y' = -1 if FirstSeen > `y'
    replace MedOOP`y' = -1 if FirstSeen > `y'
    replace Wealth`y' = -1 if FirstSeen < `y' & Health`y' == .
    replace MedOOP`y' = -1 if FirstSeen < `y' & Health`y' == .
    replace Health`y' = -1 if FirstSeen < `y' & Health`y' == .
}

forvalues y = 1996(2)2010 {
    replace Wealth`y' = -1 if Wealth`y' == .
}

gen Cohort = ceil(TypeNum/10)
gen Temp = TypeNum - (Cohort-1)*10
gen IncQuint = mod(Temp,5)
gen Sex = ceil(Temp/5) - 1
drop Temp

gen ones = 1
sort Cohort IncQuint InitWealth
bysort Cohort IncQuint: gen WealthRank = sum(ones)
bysort Cohort IncQuint: egen Total = sum(ones)
gen WealthPct = WealthRank/Total
gen WealthQuint = ceil(WealthPct*5)
drop WealthRank Total WealthPct

sort Sex IncQuint InitHealth
bysort Sex IncQuint: gen HealthRank = sum(ones)
bysort Sex IncQuint: egen Total = sum(ones)
gen HealthPct = HealthRank/Total
gen HealthTert = ceil(HealthPct*3)
drop HealthRank Total HealthPct ones

order ID TypeNum Sex IncQuint Cohort WealthQuint HealthTert FirstSeen Wealth* Health* MedOOP*
sort TypeNum FirstSeen ID

preserve
keep ID TypeNum Wealth*
reshape long Wealth, i(ID) j(Year)
gen MaxWealth = .
forvalues t = 1(1)180 {
    quietly summarize Wealth if TypeNum == `t', detail
    replace MaxWealth = r(max) if TypeNum == `t'
}
bysort TypeNum: keep if _n == 1
keep TypeNum MaxWealth
sort TypeNum
save MaxWealth.dta, replace
restore

drop ID InitWealth InitHealth
save EstimationData.dta, replace

clear
cd ..
cd Scripts
