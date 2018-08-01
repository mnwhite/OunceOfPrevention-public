cd ..
cd Extracted

clear all
set more off
set mem 1000000
use MainDataAll.dta

gen HHIDPN = HHID + PN
sort HHIDPN
merge m:1 HHIDPN using IDtypeList.dta
drop _merge
sort HHIDPN Year
merge m:1 HHIDPN Year using HealthData.dta, sorted
keep if _merge == 3

gen EligibleAlt = 0
replace Eligible = 1 if Retired == 1 & OfAge == 1
keep if TypeNum != .

gen Male = 0
replace Male = 1 if Sex == 1

gen LogInc = log(TotalIncome)

gen AnyDocVisit = 0
replace AnyDocVisit = 1 if DocVisNum > 0
replace AnyDocVisit = . if DocVisNum == .
replace AnyDocVisit = . if DocVisNum > 900
replace AnyDocVisit = 0 if DocVisgt1 == 5
replace AnyDocVisit = 1 if DocVisgt20 < 8

gen FluShot = 0
replace FluShot = 1 if HadFluShot == 1

gen CholTest = 0
replace CholTest = 1 if HadCholTest == 1

gen PapSmear = 0
replace PapSmear = 1 if HadPapSmear == 1
replace PapSmear = . if Male == 1

gen Mammo = 0
replace Mammo = 1 if HadMammo == 1
replace Mammo = . if Male == 1

gen Prostate = 0
replace Prostate = 1 if HadProstateEx == 1
replace Prostate = . if Male == 0

gen Exercise = 0
replace Exercise = 1 if DoesExercise == 1

rename CurrentAge Age
gen AgeSq = Age*Age
rename HLevel Health

local Regressors LogInc Age AgeSq Health Male

log using PreventiveReg.log, replace

probit AnyDocVis LogInc
probit FluShot LogInc
probit CholTest LogInc
probit PapSmear LogInc
probit Mammo LogInc
probit Prostate LogInc
probit Exercise LogInc

probit AnyDocVis `Regressors'
probit FluShot `Regressors'
probit CholTest `Regressors'
probit PapSmear `Regressors'
probit Mammo `Regressors'
probit Prostate `Regressors'
probit Exercise `Regressors'

regress AnyDocVis LogInc
regress FluShot LogInc
regress CholTest LogInc
regress PapSmear LogInc
regress Mammo LogInc
regress Prostate LogInc
regress Exercise LogInc

regress AnyDocVis `Regressors'
regress FluShot `Regressors'
regress CholTest `Regressors'
regress PapSmear `Regressors'
regress Mammo `Regressors'
regress Prostate `Regressors'
regress Exercise `Regressors'

capture log close

cd ..
cd Scripts
