clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/X10A_R.dct
sort HHID PN
save ../Extracted/X10A_R.dta, replace
clear all
infile using ../RawHRS/X10C_R.dct
sort HHID PN
save ../Extracted/X10C_R.dta, replace
clear all
infile using ../RawHRS/X10G_R.dct
sort HHID PN
save ../Extracted/X10G_R.dta, replace
clear all
infile using ../RawHRS/X10N_R.dct
sort HHID PN
save ../Extracted/X10N_R.dta, replace
clear all
infile using ../RawHRS/X10PR_R.dct
sort HHID PN
save ../Extracted/X10PR_R.dta, replace
merge 1:1 HHID PN using ../Extracted/X10A_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X10C_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X10G_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X10N_R.dta, sorted
drop _merge

keep HHID WSUBHH PN WN001 WN004 WN005 WN006 WN007 WN009 WN351 WN014 WN015 WN016 WN018 WN352 WN023 WN025_1 WN032_1 WN033_1 WN034_1 WN035_1 WN036_1 WN037_1 WN039_1 WN040_1 WN041_1 WN042_1 WN052_1 WN055_1 WN056_1 WN032_2 WN033_2 WN034_2 WN035_2 WN036_2 WN037_2 WN039_2 WN040_2 WN041_2 WN042_2 WN052_2 WN055_2 WN056_2 WN090 WN071 WN073 WN079 WN080 WN081 WN083 WN091 WN342 WN099 WN100 WN101 WN102 WN106 WN107 WN108 WN114 WN115 WN116 WN117 WN118 WN119 WN120 WN121 WN147 WN148 WN149 WN150 WN151 WN152 WN156 WN157 WN158 WN175 WN176 WN180 WN181 WN182 WN189 WN190 WN194 WN195 WN196 WN202 WN239 WN246 WN247 WN204 WN205 WN207 WN209 WN210 WN211 WN212 WN215 WN216 WN217 WN219M1 WC018 WC030 WC036 WC037 WC040 WC048 WC053 WC062 WC069 WC079 WC080 WC081 WC104 WC105 WG015 WG020 WG022 WG024 WG029 WG031 WG043 WG046 WG049 WG053 WG061 WA123 WA121 WA131
rename WSUBHH SUBHH
rename WN001 HaveMedicareA
rename WN004 HaveMedicareB
rename WN005 HadMedicaid
rename WN006 HaveMedicaid
rename WN007 HaveChampus
rename WN009 MedicareByHMO
rename WN351 HMOCoverDrugs
rename WN014 HMOPremAmt
rename WN015 HMOPremMin
rename WN016 HMOPremMax
rename WN018 HMOPremPer
rename WN352 HaveMedicareD
rename WN023 NumPrivPlans
rename WN025_1 Plan1Primary
rename WN032_1 Plan1PayRX
rename WN033_1 Plan1CurEmp
rename WN034_1 Plan1ForEmp
rename WN035_1 Plan1CurSpEmp
rename WN036_1 Plan1ForSpEmp
rename WN037_1 Plan1HowPurch
rename WN039_1 Plan1PremPay
rename WN040_1 Plan1PremAmt
rename WN041_1 Plan1PremMin
rename WN042_1 Plan1PremMax
rename WN052_1 Plan1IsHMO
rename WN055_1 Plan1DocNetwork
rename WN056_1 Plan1PayOutNtwk
rename WN032_2 Plan2PayRX
rename WN033_2 Plan2CurEmp
rename WN034_2 Plan2ForEmp
rename WN035_2 Plan2CurSpEmp
rename WN036_2 Plan2ForSpEmp
rename WN037_2 Plan2HowPurch
rename WN039_2 Plan2PremPay
rename WN040_2 Plan2PremAmt
rename WN041_2 Plan2PremMin
rename WN042_2 Plan2PremMax
rename WN052_2 Plan2IsHMO
rename WN055_2 Plan2DocNetwork
rename WN056_2 Plan2PayOutNtwk
rename WN090 TotalInsPlans
rename WN071 HaveLTCIns
rename WN073 WhichPlanLTC
rename WN079 LTCPremAmt
rename WN080 LTCPremMin
rename WN081 LTCPremMax
rename WN083 LTCPremPer
rename WN091 EverWithoutIns
rename WN342 NoHealthInsNow
rename WN099 StayInHosp
rename WN100 HospNumStays
rename WN101 HospNumNights
rename WN102 HospCoverByIns
rename WN106 HospOOPAmt
rename WN107 HospOOPMin
rename WN108 HospOOPMax
rename WN114 StayInLTC
rename WN115 LTCNumStays
rename WN116 LTCNumNights
rename WN117 LTCNumMonths
rename WN118 LTCCoverByIns
rename WN119 LTCOOPAmt
rename WN120 LTCOOPMin
rename WN121 LTCOOPMax
rename WN147 DocVisNum
rename WN148 DocVisgt20
rename WN149 DocVisgt5
rename WN150 DocVisgt1
rename WN151 DocVisgt50
rename WN152 DocVisCoverByIns
rename WN156 DocVisOOPAmt
rename WN157 DocVisOOPMin
rename WN158 DocVisOOPMax
rename WN175 TakeRXDrugs
rename WN176 RXCoverByIns
rename WN180 RXOOPAmt
rename WN181 RXOOPMin
rename WN182 RXOOPMax
rename WN189 HoMedVisit
rename WN190 HoMedCoverByIns
rename WN194 HoMedOOPAmt
rename WN195 HoMedOOPMin
rename WN196 HoMedOOPMax
rename WN202 SpecFacVisit
rename WN239 SpecFacOOPAmt
rename WN246 SpecFacOOPMin
rename WN247 SpecFacOOPMax
rename WN204 HospAssigned
rename WN205 LTCAssigned
rename WN207 DocVisAssigned
rename WN209 RXAssigned
rename WN210 HoMedAssigned
rename WN211 TotalOOPAssigned
rename WN212 RecdHelpWithBills
rename WN215 BillHelpAmt
rename WN216 BillHelpMin
rename WN217 BillHelpMax
rename WN219M1 HowPayLargeBills
rename WC018 HaveCancer
rename WC030 HaveLungCond
rename WC036 HaveHeartCond
rename WC037 TakeRX4Heart
rename WC040 RecentHeartAtk
rename WC048 HaveCongHeartFail
rename WC053 HasHadStroke
rename WC062 RecentStroke
rename WC069 HaveMemProb
rename WC079 FallenRecently
rename WC080 NumFalls
rename WC081 InjuryFall
rename WC104 HaveFreqPain
rename WC105 PainSeverity
rename WG015 GetHelpDress
rename WG020 GetHelpCrossRoom
rename WG022 GetHelpBathing
rename WG024 GetHelpEating
rename WG029 GetHelpWithBed
rename WG031 GetHelpToilet
rename WG043 GetHelpCooking
rename WG046 GetHelpShopping
rename WG049 GetHelpPhoning
rename WG053 GetHelpTakingRX
rename WG061 GetHelpMoney
rename WA123 DeathYear
rename WA121 DeathMonth
rename WA131 DeathExpected

label variable SUBHH "Sub-household ID number"
label variable HaveMedicareA "Covered by Medicare now?"
label variable HaveMedicareB "Have Medicare Part B?"
label variable HadMedicaid "Covered by Medicaid recently?"
label variable HaveMedicaid "Covered by Medicaid now?"
label variable HaveChampus "Covered by military plan now?"
label variable MedicareByHMO "Medicare by HMO?"
label variable HMOCoverDrugs "HMO cover drugs?"
label variable HMOPremAmt "HMO premiums amount"
label variable HMOPremMin "HMO premiums minimum"
label variable HMOPremMax "HMO premiums maximum"
label variable HMOPremPer "HMO premiums period"
label variable HaveMedicareD "Have Medicare Part D?"
label variable NumPrivPlans "Number of other insurance plans"
label variable Plan1Primary "Is plan 1 or Medicare primary?"
label variable Plan1PayRX "Does plan 1 help with prescriptions?"
label variable Plan1CurEmp "Is plan 1 from current employer?"
label variable Plan1ForEmp "Is plan 1 from former employer?"
label variable Plan1CurSpEmp "Is plan 1 from spouses cur employer?"
label variable Plan1ForSpEmp "Is plan 1 from spouses fmr employer?"
label variable Plan1HowPurch "How plan 1 was purchased"
label variable Plan1PremPay "Pay all/some/none premiums on plan 1"
label variable Plan1PremAmt "Premiums paid for plan 1 amount"
label variable Plan1PremMin "Premiums paid for plan 1 minimum"
label variable Plan1PremMax "Premiums paid for plan 1 maximum"
label variable Plan1IsHMO "Is plan 1 an HMO?"
label variable Plan1DocNetwork "Plan 1 have a doctor network?"
label variable Plan1PayOutNtwk "Plan 1 pay for outside network care?"
label variable Plan2PayRX "Does plan 2 help with prescriptions?"
label variable Plan2CurEmp "Is plan 2 from current employer?"
label variable Plan2ForEmp "Is plan 2 from former employer?"
label variable Plan2CurSpEmp "Is plan 2 from spouses cur employer?"
label variable Plan2ForSpEmp "Is plan 2 from spouses fmr employer?"
label variable Plan2HowPurch "How plan 2 was purchased"
label variable Plan2PremPay "Pay all/some/none premiums on plan 2"
label variable Plan2PremAmt "Premiums paid for plan 2 amount"
label variable Plan2PremMin "Premiums paid for plan 2 minimum"
label variable Plan2PremMax "Premiums paid for plan 2 maximum"
label variable Plan2IsHMO "Is plan 2 an HMO?"
label variable Plan2DocNetwork "plan 2 have a doctor network?"
label variable Plan2PayOutNtwk "plan 2 pay for outside network care?"
label variable TotalInsPlans "Total number of insurance plans"
label variable HaveLTCIns "Have long term care insurance?"
label variable WhichPlanLTC "Which plan has LTC?"
label variable LTCPremAmt "Premium for LTC insurance amount"
label variable LTCPremMin "Premium for LTC insurance minimum"
label variable LTCPremMax "Premium for LTC insurance maximum"
label variable LTCPremPer "Premium for LTC insurance period"
label variable EverWithoutIns "Ever without health insurance?"
label variable NoHealthInsNow "Confirm no health insurance now?"
label variable StayInHosp "Have you stayed in hospital overnight?"
label variable HospNumStays "Number of stays in hospital"
label variable HospNumNights "Number of nights spent in hospital"
label variable HospCoverByIns "How much of hosp stay covered by ins?"
label variable HospOOPAmt "Out of pocket hospital bills amount"
label variable HospOOPMin "Out of pocket hospital bills minimum"
label variable HospOOPMax "Out of pocket hospital bills maximum"
label variable StayInLTC "Ever stay in long term care?"
label variable LTCNumStays "Number of stays in long term care"
label variable LTCNumNights "Number of nights spent in LTC"
label variable LTCNumMonths "Number of months spent in LTC"
label variable LTCCoverByIns "How much of LTC stay covered by ins?"
label variable LTCOOPAmt "Out of pocket LTC bills amount"
label variable LTCOOPMin "Out of pocket LTC bills minimum"
label variable LTCOOPMax "Out of pocket LTC bills maximum"
label variable DocVisNum "Number other doctor consultations"
label variable DocVisgt20 "Doctor visits relative to 20?"
label variable DocVisgt5 "Doctor visits relative to 5?"
label variable DocVisgt1 "Doctor visits relative to 1?"
label variable DocVisgt50 "Doctor visits relative to 50?"
label variable DocVisCoverByIns "How much of doc visits covered by ins?"
label variable DocVisOOPAmt "Out of pocket doc visits amount"
label variable DocVisOOPMin "Out of pocket doc visits minimum"
label variable DocVisOOPMax "Out of pocket doc visits maximum"
label variable TakeRXDrugs "Regularly take prescription drugs?"
label variable RXCoverByIns "How much of drugs covered by ins?"
label variable RXOOPAmt "Out of pocket drugs/month amount"
label variable RXOOPMin "Out of pocket drugs/month minimum"
label variable RXOOPMax "Out of pocket drugs/month maximum"
label variable HoMedVisit "Received home medical care?"
label variable HoMedCoverByIns "How much of home care covered by ins?"
label variable HoMedOOPAmt "Out of pocket home care amount"
label variable HoMedOOPMin "Out of pocket home care minimum"
label variable HoMedOOPMax "Out of pocket home care maximum"
label variable SpecFacVisit "Used other special facility?"
label variable SpecFacOOPAmt "Out of pocket special facility amount"
label variable SpecFacOOPMin "Out of pocket special facility minimum"
label variable SpecFacOOPMax "Out of pocket special facility maximum"
label variable HospAssigned "Assigned hospital costs"
label variable LTCAssigned "Assigned long term care  costs"
label variable DocVisAssigned "Assigned doctor visits costs"
label variable RXAssigned "Assigned prescription costs"
label variable HoMedAssigned "Assigned home care costs"
label variable TotalOOPAssigned "Assigned total out of pocket costs"
label variable RecdHelpWithBills "Received help with paying med bills?"
label variable BillHelpAmt "Med bill help received amount"
label variable BillHelpMin "Med bill help received minimum"
label variable BillHelpMax "Med bill help received maximum"
label variable HowPayLargeBills "How pay for large medical bills?"
label variable HaveCancer "Have cancer?"
label variable HaveLungCond "Have lung condition?"
label variable HaveHeartCond "Have heart condition?"
label variable TakeRX4Heart "Taking medication for heart condition?"
label variable RecentHeartAtk "Had heart attack in past two years?"
label variable HaveCongHeartFail "Have congestive heart failure?"
label variable HasHadStroke "Has ever had a stroke?"
label variable RecentStroke "Had stroke in past two years?"
label variable HaveMemProb "Have memory problems?"
label variable FallenRecently "Has fallen recently"
label variable NumFalls "Number of times fallen"
label variable InjuryFall "Serious injury in any falls?"
label variable HaveFreqPain "Often have pain?"
label variable PainSeverity "Severity of pain"
label variable GetHelpDress "Ever get help getting dressed?"
label variable GetHelpCrossRoom "Ever get help crossing a room?"
label variable GetHelpBathing "Ever get help showering?"
label variable GetHelpEating "Ever get help eating?"
label variable GetHelpWithBed "Ever get help to get in bed?"
label variable GetHelpToilet "Ever get help using the toilet?"
label variable GetHelpCooking "Ever get help preparing a hot meal?"
label variable GetHelpShopping "Ever get help with groceries?"
label variable GetHelpPhoning "Ever get help making phone calls?"
label variable GetHelpTakingRX "Ever get help taking medications?"
label variable GetHelpMoney "Ever get help managing money?"
label variable DeathYear "Year of death"
label variable DeathMonth "Month of death"
label variable DeathExpected "Was the death expected?"

save ../Extracted/MergedExit10.dta, replace
