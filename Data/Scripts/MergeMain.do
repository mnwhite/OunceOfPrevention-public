clear all

cd ..
cd Extracted

use MainData10.dta
append using MainData08.dta
append using MainData06.dta
append using MainData04.dta
append using MainData02.dta
append using MainData00.dta
append using MainData98.dta
append using MainData96.dta
append using MainData95.dta

replace CurrentAge = Year - YearBorn if CurrentAge == . & YearBorn < 9998
gen From1995 = 0
replace From1995 = 1 if Year == 1995
replace Year = 1996 if Year == 1995
gen Single = 0
replace Single = 1 if CoupleStatus != 1 & CoupleStatus != 2 & CoupleStatus != .
gen Retired = 0
replace Retired = 1 if EmpStatus >= 4 & EmpStatus <= 7
gen OfAge = 0
replace OfAge = 1 if CurrentAge >= 65 & CurrentAge != .
gen Eligible = 0
replace Eligible = 1 if Single == 1 & Retired == 1 & OfAge == 1
order HHID PN SUBHH Year Sex Single EmpStatus OfAge Eligible
save MainDataAll.dta, replace

cd ..
cd Scripts
