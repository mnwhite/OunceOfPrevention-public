clear all
cd ..
cd Extracted

use MainDataAll.dta
gen HHIDPN = HHID + PN
order HHIDPN Year
sort HHIDPN Year

merge HHIDPN Year using HealthData.dta
tab _merge
tab _merge if Year == 1996
gen ones = 1
bysort HHIDPN Year: egen UhOh = sum(ones)
drop if UhOh > 1
drop _merge ones UhOh

append using ExitSimpleData.dta
replace HealthStatus = 6 if Health == 6
drop Health
gen Health = 6 - HealthStatus

gen HealthMod = HLevel
gen HealthModSq = HealthMod*HealthMod
gen Male = 2 - Sex
gen Age = CurrentAge - 65
gen AgeSq = Age*Age

gen XYears = 0
replace XYears = 1 if Year == 1998 | Year == 2000
gen ZYears = 0
replace ZYears = 1 if Year == 1996

gen MedLowerBound = .
gen MedUpperBound = .
gen TotalMedImp = .

* Do it for just 1996 first

replace TotalMedImp = TotalMedCostA if ZYears == 1 & TotalMedCostA <= 1000000

replace MedUpperBound = 5000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 1
replace MedLowerBound = 5000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 5
replace TotalMedImp = 5000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 3

replace MedUpperBound = 1000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 1 & TotalMedCostC == 1
replace MedLowerBound = 1000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 1 & TotalMedCostC == 5
replace TotalMedImp = 1000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 1 & TotalMedCostC == 3

replace MedUpperBound = 25000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 5 & TotalMedCostD == 1
replace MedLowerBound = 25000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 5 & TotalMedCostD == 5
replace TotalMedImp = 25000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostB == 5 & TotalMedCostD == 3

replace MedUpperBound = 100000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostD == 5 & TotalMedCostE == 1
replace MedLowerBound = 100000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostD == 5 & TotalMedCostE == 5
replace TotalMedImp = 100000 if ZYears == 1 & TotalMedCostA > 1000000 & TotalMedCostD == 5 & TotalMedCostE == 3

replace MedUpperBound = 1000000 if MedUpperBound == . & ZYears == 1 & MedLowerBound != .
replace MedLowerBound = 0 if MedLowerBound == . & ZYears == 1 & MedUpperBound != .
replace MedUpperBound = . if ZYears == 1 & TotalMedImp != .
replace MedLowerBound = . if ZYears == 1 & TotalMedImp != .


* Now for 1998 and 2000
* first when the individual has entry point 1 (1000)

replace MedUpperBound = 1000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 1
replace MedLowerBound = 1000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5
replace TotalMedImp = 1000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 3

replace MedUpperBound = 5000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 1
replace MedLowerBound = 5000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5
replace TotalMedImp = 5000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 3

replace MedUpperBound = 25000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 1
replace MedLowerBound = 25000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 5
replace TotalMedImp = 25000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 3

replace MedUpperBound = 100000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 5 & TotalMedCostD == 1
replace MedLowerBound = 100000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 5 & TotalMedCostD == 5
replace TotalMedImp = 100000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 5 & TotalMedCostD == 3

replace MedUpperBound = 500000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 5 & TotalMedCostD == 5 & TotalMedCostE == 1
replace MedLowerBound = 500000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 5 & TotalMedCostD == 5 & TotalMedCostE == 5
replace TotalMedImp = 500000 if XYears == 1 & RandomEntryPt == 1 & TotalMedCostA == 5 & TotalMedCostB == 5 & TotalMedCostC == 5 & TotalMedCostD == 5 & TotalMedCostE == 3

* next when the individual has entry point 2 (5000)

replace MedUpperBound = 5000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 1
replace MedLowerBound = 5000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5
replace TotalMedImp = 5000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 3

replace MedUpperBound = 1000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 1 & TotalMedCostC == 1
replace MedLowerBound = 1000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 1 & TotalMedCostC == 5
replace TotalMedImp = 1000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 1 & TotalMedCostC == 3

replace MedUpperBound = 25000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 1
replace MedLowerBound = 25000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 5
replace TotalMedImp = 25000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 3

replace MedUpperBound = 100000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 5 & TotalMedCostD == 1
replace MedLowerBound = 100000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 5 & TotalMedCostD == 5
replace TotalMedImp = 100000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 5 & TotalMedCostD == 3

replace MedUpperBound = 500000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 5 & TotalMedCostD == 5 & TotalMedCostE == 1
replace MedLowerBound = 500000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 5 & TotalMedCostD == 5 & TotalMedCostE == 5
replace TotalMedImp = 500000 if XYears == 1 & RandomEntryPt == 2 & TotalMedCostA == 5 & TotalMedCostC == 5 & TotalMedCostD == 5 & TotalMedCostE == 3

* last when the individual has entry point 3 (25000)

replace MedUpperBound = 25000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 1
replace MedLowerBound = 25000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 5
replace TotalMedImp = 25000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 3

replace MedUpperBound = 5000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 1 & TotalMedCostB == 1
replace MedLowerBound = 5000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 1 & TotalMedCostB == 5
replace TotalMedImp = 5000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 1 & TotalMedCostB == 3

replace MedUpperBound = 1000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 1 & TotalMedCostB == 1 & TotalMedCostC == 1
replace MedLowerBound = 1000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 1 & TotalMedCostB == 1 & TotalMedCostC == 5
replace TotalMedImp = 1000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 1 & TotalMedCostB == 1 & TotalMedCostC == 3

replace MedUpperBound = 100000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 5 & TotalMedCostD == 1
replace MedLowerBound = 100000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 5 & TotalMedCostD == 5
replace TotalMedImp = 100000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 5 & TotalMedCostD == 3

replace MedUpperBound = 500000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 5 & TotalMedCostD == 5 & TotalMedCostE == 1
replace MedLowerBound = 500000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 5 & TotalMedCostD == 5 & TotalMedCostE == 5
replace TotalMedImp = 500000 if XYears == 1 & RandomEntryPt == 3 & TotalMedCostA == 5 & TotalMedCostD == 5 & TotalMedCostE == 3

replace MedUpperBound = 1000000 if MedUpperBound == . & XYears == 1 & MedLowerBound != .
replace MedLowerBound = 0 if MedLowerBound == . & XYears == 1 & MedUpperBound != .
replace MedUpperBound = . if XYears == 1 & TotalMedImp != .
replace MedLowerBound = . if XYears == 1 & TotalMedImp != .

gen HasMedData = 0 if Year >= 1996 & Year <= 2000
replace HasMedData = 1 if MedUpperBound != .
replace HasMedData = 2 if TotalMedImp != .
tab HasMedData

* Woo, now let's try to impute values for those that don't have it

gen TotalMedImpB = .
gen boop = .
foreach lb in 0 1000 5000 25000 100000 500000 {
    foreach ub in 1000 5000 25000 100000 500000 1000000 {
        quietly summarize TotalMedImp if TotalMedImp > `lb' & TotalMedImp < `ub', detail
        replace boop = r(p50)
        replace TotalMedImpB = boop if MedLowerBound == `lb' & MedUpperBound == `ub' & TotalMedImp == .
    }
}
tab TotalMedImpB
replace TotalMedImp = TotalMedImpB if TotalMedImp == .
gen CopayImp = TotalOOPAssigned/TotalMedImp
summarize CopayImp, detail
drop boop

* Now regress the imputed coinsurance rate on demographic info

gen Inc = TotalIncome/10000
gen IncSq = Inc*Inc
gen IncCu = IncSq*Inc
gen H1A1 = Age*HealthMod
gen H2A1 = Age*HealthModSq
gen H1A2 = AgeSq*HealthMod
gen H2A2 = AgeSq*HealthModSq
gen H1Y1 = HealthMod*Inc
gen H2Y1 = HealthModSq*Inc
gen H1Y2 = HealthMod*IncSq
gen H2Y2 = HealthModSq*IncSq

log using InsuranceRegressions.log, replace
regress CopayImp HealthMod HealthModSq Age AgeSq Male Inc IncSq IncCu H1A1 H2A1 H1A2 H2A2 H1Y1 H2Y1 H1Y2 H2Y2 if CopayImp <= 1
capture log close

matrix CopayCoeffs = e(b)

mat V=e(V) // place e(V) in V
loca nv=`e(rank)' // count number of right hand variables
mat CopayStdErrs=J(1,`nv',-9999) // create empty matrix for standard errors
forval i=1/`nv' {
    mat CopayStdErrs[1,`i']=sqrt(V[`i',`i']) // convert the variances into the se one at a time
}


predict CopayFitted, xb
replace CopayFitted = 0.1 if CopayFitted < 0.1
replace CopayFitted = 1 if CopayFitted > 1 & CopayFitted != .
replace TotalOOPAssigned = 0.01 if TotalOOPAssigned == 0
gen TotalMedFitted = TotalOOPAssigned/CopayFitted

* Find the total premium costs for each observation

gen Plan1Cost = .
replace Plan1Cost = Plan1PremAmt if Year & Plan1PremAmt < 9997
replace Plan1Cost = Plan1Cost/12 if Plan1PremPer == 1
replace Plan1Cost = Plan1Cost/3 if Plan1PremPer == 2
replace Plan1Cost = Plan1Cost/2 if Plan1PremPer == 3
replace Plan1Cost = Plan1Cost*4.33 if Plan1PremPer == 5
replace Plan1Cost = Plan1Cost*2.16 if Plan1PremPer == 6
replace Plan1Cost = Plan1Cost/6 if Plan1PremPer == 7
replace Plan1Cost = Plan1Cost*2 if Plan1PremPer == 8
replace Plan1PremMax = 1500 if Plan1PremMax > 1500 & Plan1PremMax != .
gen Plan1CostB = .
foreach lb in 0 25 26 50 51 100 101 150 151 300 301 500 501 {
    foreach ub in 24 25 49 50 99 100 149 150 299 300 499 500 1500 {
        quietly summarize Plan1Cost if Plan1Cost >= `lb' & Plan1Cost <= `ub', detail
        replace Plan1CostB = r(p50) if Plan1PremMin == `lb' & Plan1PremMax == `ub' & Plan1Cost == .
    }
}
tab Plan1CostB
replace Plan1Cost = Plan1CostB if Plan1Cost == .

gen Plan2Cost = .
replace Plan2Cost = Plan2PremAmt if Year & Plan2PremAmt < 9997
replace Plan2Cost = Plan2Cost/12 if Plan2PremPer == 1
replace Plan2Cost = Plan2Cost/3 if Plan2PremPer == 2
replace Plan2Cost = Plan2Cost/2 if Plan2PremPer == 3
replace Plan2Cost = Plan2Cost*4.33 if Plan2PremPer == 5
replace Plan2Cost = Plan2Cost*2.16 if Plan2PremPer == 6
replace Plan2Cost = Plan2Cost/6 if Plan2PremPer == 7
replace Plan2Cost = Plan2Cost*2 if Plan2PremPer == 8
replace Plan2PremMax = 1500 if Plan2PremMax > 1500 & Plan2PremMax != .
gen Plan2CostB = .
foreach lb in 0 25 26 50 51 100 101 150 151 300 301 500 501 {
    foreach ub in 24 25 49 50 99 100 149 150 299 300 499 500 1500 {
        quietly summarize Plan2Cost if Plan2Cost >= `lb' & Plan2Cost <= `ub', detail
        replace Plan2CostB = r(p50) if Plan2PremMin == `lb' & Plan2PremMax == `ub' & Plan2Cost == .
    }
}
tab Plan2CostB
replace Plan2Cost = Plan2CostB if Plan2Cost == .

gen HMOCost = .
replace HMOCost = HMOPremAmt if Year & HMOPremAmt < 9997
replace HMOCost = HMOCost/3 if HMOPremPer == 2
replace HMOCost = HMOCost/12 if HMOPremPer == 3
replace HMOCost = HMOCost/6 if HMOPremPer == 4
replace HMOPremMax = 1200 if HMOPremMax > 1500 & HMOPremMax != .
gen HMOCostB = .
foreach lb in 0 15 16 30 31 60 61 100 101 120 121 200 201 {
    foreach ub in 14 15 29 30 59 60 99 100 119 120 199 200 1200 {
        quietly summarize HMOCost if HMOCost >= `lb' & HMOCost <= `ub', detail
        replace HMOCostB = r(p50) if HMOPremMin == `lb' & HMOPremMax == `ub' & HMOCost == .
    }
}
tab HMOCostB
replace HMOCost = HMOCostB if HMOCost == .

gen PremiumsImp = 0
replace PremiumsImp = PremiumsImp + Plan1Cost if Plan1Cost != .
replace PremiumsImp = PremiumsImp + Plan2Cost if Plan2Cost != .
replace PremiumsImp = PremiumsImp + HMOCost if HMOCost != .
replace PremiumsImp = PremiumsImp*12/10000

* Disinflate the premiums based on the price level

gen TotalPrice = .
replace TotalPrice = 212.200/169.300 if Year == 2008
replace TotalPrice = 199.300/169.300 if Year == 2006
replace TotalPrice = 186.300/169.300 if Year == 2004
replace TotalPrice = 177.700/169.300 if Year == 2002
replace TotalPrice = 169.300/169.300 if Year == 2000
replace TotalPrice = 159.400/169.300 if Year == 1998
replace TotalPrice = 154.700/169.300 if Year == 1996

replace PremiumsImp = PremiumsImp/TotalPrice

* Regress premiums on demographic info
log using InsuranceRegressions.log, append
regress PremiumsImp HealthMod HealthModSq Age AgeSq Male Inc IncSq IncCu H1A1 H2A1 H1A2 H2A2 H1Y1 H2Y1 H1Y2 H2Y2 if CoupleStatus == 6 & IsRetired != 5
capture log close

matrix PremiumCoeffs = e(b)

mat V=e(V) // place e(V) in V
mat PremiumStdErrs=J(1,17,-9999) // create empty matrix for standard errors
forval i=1/17 {
    mat PremiumStdErrs[1,`i']=sqrt(V[`i',`i']) // convert the variances into the se one at a time
}

predict PremiumsFitted, xb
replace PremiumsFitted = 0.01 if PremiumsFitted < 0.01


clear

svmat double CopayCoeffs, name(CopayCoeffs)
svmat double PremiumCoeffs, name(PremiumCoeffs)
svmat double CopayStdErrs, name(CopayStdErrs)
svmat double PremiumStdErrs, name(PremiumStdErrs)
export delimited ../InsuranceCoeffs.txt, replace

clear all
cd ..
cd Scripts

