clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/X02A_R.dct
sort HHID PN
save ../Extracted/X02A_R.dta, replace
clear all
infile using ../RawHRS/X02C_R.dct
sort HHID PN
save ../Extracted/X02C_R.dta, replace
clear all
infile using ../RawHRS/X02G_R.dct
sort HHID PN
save ../Extracted/X02G_R.dta, replace
clear all
infile using ../RawHRS/X02N_R.dct
sort HHID PN
save ../Extracted/X02N_R.dta, replace
clear all
infile using ../RawHRS/X02PR_R.dct
sort HHID PN
save ../Extracted/X02PR_R.dta, replace
merge 1:1 HHID PN using ../Extracted/X02A_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X02C_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X02G_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X02N_R.dta, sorted
drop _merge

keep HHID SSUBHH PN SN001 SN004 SN005 SN006 SN007 SN009 SN014 SN015 SN016 SN018 SN023 SN025_1 SN032_1 SN033_1 SN035_1 SN036_1 SN037_1 SN039_1 SN040_1 SN041_1 SN042_1 SN052_1 SN055_1 SN056_1 SN032_2 SN033_2 SN035_2 SN036_2 SN037_2 SN039_2 SN040_2 SN041_2 SN042_2 SN052_2 SN055_2 SN056_2 SN090 SN071 SN073 SN079 SN080 SN081 SN083 SN091 SN099 SN100 SN101 SN102 SN106 SN107 SN108 SN114 SN115 SN116 SN117 SN118 SN119 SN120 SN121 SN147 SN148 SN149 SN150 SN151 SN152 SN156 SN157 SN158 SN175 SN176 SN180 SN181 SN182 SN189 SN190 SN194 SN195 SN196 SN202 SN239 SN246 SN247 SN204 SN205 SN207 SN209 SN210 SN211 SN212 SN215 SN216 SN217 SN219M1 SC018 SC030 SC036 SC037 SC040 SC048 SC053 SC062 SC069 SC079 SC080 SC081 SC104 SC105 SG015 SG020 SG022 SG024 SG029 SG031 SG043 SG046 SG049 SG053 SG061 SA123 SA121 SA131
rename SSUBHH SUBHH
rename SN001 HaveMedicareA
rename SN004 HaveMedicareB
rename SN005 HadMedicaid
rename SN006 HaveMedicaid
rename SN007 HaveChampus
rename SN009 MedicareByHMO
rename SN014 HMOPremAmt
rename SN015 HMOPremMin
rename SN016 HMOPremMax
rename SN018 HMOPremPer
rename SN023 NumPrivPlans
rename SN025_1 Plan1Primary
rename SN032_1 Plan1PayRX
rename SN033_1 Plan1CurEmp
rename SN035_1 Plan1CurSpEmp
rename SN036_1 Plan1ForSpEmp
rename SN037_1 Plan1HowPurch
rename SN039_1 Plan1PremPay
rename SN040_1 Plan1PremAmt
rename SN041_1 Plan1PremMin
rename SN042_1 Plan1PremMax
rename SN052_1 Plan1IsHMO
rename SN055_1 Plan1DocNetwork
rename SN056_1 Plan1PayOutNtwk
rename SN032_2 Plan2PayRX
rename SN033_2 Plan2CurEmp
rename SN035_2 Plan2CurSpEmp
rename SN036_2 Plan2ForSpEmp
rename SN037_2 Plan2HowPurch
rename SN039_2 Plan2PremPay
rename SN040_2 Plan2PremAmt
rename SN041_2 Plan2PremMin
rename SN042_2 Plan2PremMax
rename SN052_2 Plan2IsHMO
rename SN055_2 Plan2DocNetwork
rename SN056_2 Plan2PayOutNtwk
rename SN090 TotalInsPlans
rename SN071 HaveLTCIns
rename SN073 WhichPlanLTC
rename SN079 LTCPremAmt
rename SN080 LTCPremMin
rename SN081 LTCPremMax
rename SN083 LTCPremPer
rename SN091 EverWithoutIns
rename SN099 StayInHosp
rename SN100 HospNumStays
rename SN101 HospNumNights
rename SN102 HospCoverByIns
rename SN106 HospOOPAmt
rename SN107 HospOOPMin
rename SN108 HospOOPMax
rename SN114 StayInLTC
rename SN115 LTCNumStays
rename SN116 LTCNumNights
rename SN117 LTCNumMonths
rename SN118 LTCCoverByIns
rename SN119 LTCOOPAmt
rename SN120 LTCOOPMin
rename SN121 LTCOOPMax
rename SN147 DocVisNum
rename SN148 DocVisgt20
rename SN149 DocVisgt5
rename SN150 DocVisgt1
rename SN151 DocVisgt50
rename SN152 DocVisCoverByIns
rename SN156 DocVisOOPAmt
rename SN157 DocVisOOPMin
rename SN158 DocVisOOPMax
rename SN175 TakeRXDrugs
rename SN176 RXCoverByIns
rename SN180 RXOOPAmt
rename SN181 RXOOPMin
rename SN182 RXOOPMax
rename SN189 HoMedVisit
rename SN190 HoMedCoverByIns
rename SN194 HoMedOOPAmt
rename SN195 HoMedOOPMin
rename SN196 HoMedOOPMax
rename SN202 SpecFacVisit
rename SN239 SpecFacOOPAmt
rename SN246 SpecFacOOPMin
rename SN247 SpecFacOOPMax
rename SN204 HospAssigned
rename SN205 LTCAssigned
rename SN207 DocVisAssigned
rename SN209 RXAssigned
rename SN210 HoMedAssigned
rename SN211 TotalOOPAssigned
rename SN212 RecdHelpWithBills
rename SN215 BillHelpAmt
rename SN216 BillHelpMin
rename SN217 BillHelpMax
rename SN219M1 HowPayLargeBills
rename SC018 HaveCancer
rename SC030 HaveLungCond
rename SC036 HaveHeartCond
rename SC037 TakeRX4Heart
rename SC040 RecentHeartAtk
rename SC048 HaveCongHeartFail
rename SC053 HasHadStroke
rename SC062 RecentStroke
rename SC069 HaveMemProb
rename SC079 FallenRecently
rename SC080 NumFalls
rename SC081 InjuryFall
rename SC104 HaveFreqPain
rename SC105 PainSeverity
rename SG015 GetHelpDress
rename SG020 GetHelpCrossRoom
rename SG022 GetHelpBathing
rename SG024 GetHelpEating
rename SG029 GetHelpWithBed
rename SG031 GetHelpToilet
rename SG043 GetHelpCooking
rename SG046 GetHelpShopping
rename SG049 GetHelpPhoning
rename SG053 GetHelpTakingRX
rename SG061 GetHelpMoney
rename SA123 DeathYear
rename SA121 DeathMonth
rename SA131 DeathExpected

label variable SUBHH "Sub-household ID number"
label variable HaveMedicareA "Covered by Medicare now?"
label variable HaveMedicareB "Have Medicare Part B?"
label variable HadMedicaid "Covered by Medicaid recently?"
label variable HaveMedicaid "Covered by Medicaid now?"
label variable HaveChampus "Covered by military plan now?"
label variable MedicareByHMO "Medicare by HMO?"
label variable HMOPremAmt "HMO premiums amount"
label variable HMOPremMin "HMO premiums minimum"
label variable HMOPremMax "HMO premiums maximum"
label variable HMOPremPer "HMO premiums period"
label variable NumPrivPlans "Number of other insurance plans"
label variable Plan1Primary "Is plan 1 or Medicare primary?"
label variable Plan1PayRX "Does plan 1 help with prescriptions?"
label variable Plan1CurEmp "Is plan 1 from current employer?"
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

save ../Extracted/MergedExit02.dta, replace
