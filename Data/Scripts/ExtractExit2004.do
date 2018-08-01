clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/X04A_R.dct
sort HHID PN
save ../Extracted/X04A_R.dta, replace
clear all
infile using ../RawHRS/X04C_R.dct
sort HHID PN
save ../Extracted/X04C_R.dta, replace
clear all
infile using ../RawHRS/X04G_R.dct
sort HHID PN
save ../Extracted/X04G_R.dta, replace
clear all
infile using ../RawHRS/X04N_R.dct
sort HHID PN
save ../Extracted/X04N_R.dta, replace
clear all
infile using ../RawHRS/X04PR_R.dct
sort HHID PN
save ../Extracted/X04PR_R.dta, replace
merge 1:1 HHID PN using ../Extracted/X04A_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X04C_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X04G_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X04N_R.dta, sorted
drop _merge

keep HHID TSUBHH PN TN001 TN004 TN005 TN006 TN007 TN009 TN351 TN014 TN015 TN016 TN018 TN023 TN025_1 TN032_1 TN033_1 TN034_1 TN035_1 TN036_1 TN037_1 TN039_1 TN040_1 TN041_1 TN042_1 TN052_1 TN055_1 TN056_1 TN032_2 TN033_2 TN034_2 TN035_2 TN036_2 TN037_2 TN039_2 TN040_2 TN041_2 TN042_2 TN052_2 TN055_2 TN056_2 TN090 TN071 TN073 TN079 TN080 TN081 TN083 TN091 TN099 TN100 TN101 TN102 TN106 TN107 TN108 TN114 TN115 TN116 TN117 TN118 TN119 TN120 TN121 TN147 TN148 TN149 TN150 TN151 TN152 TN156 TN157 TN158 TN175 TN176 TN180 TN181 TN182 TN189 TN190 TN194 TN195 TN196 TN202 TN239 TN246 TN247 TN204 TN205 TN207 TN209 TN210 TN211 TN212 TN215 TN216 TN217 TN219M1 TC018 TC030 TC036 TC037 TC040 TC048 TC053 TC062 TC069 TC079 TC080 TC081 TC104 TC105 TG015 TG020 TG022 TG024 TG029 TG031 TG043 TG046 TG049 TG053 TG061 TA123 TA121 TA131
rename TSUBHH SUBHH
rename TN001 HaveMedicareA
rename TN004 HaveMedicareB
rename TN005 HadMedicaid
rename TN006 HaveMedicaid
rename TN007 HaveChampus
rename TN009 MedicareByHMO
rename TN351 HMOCoverDrugs
rename TN014 HMOPremAmt
rename TN015 HMOPremMin
rename TN016 HMOPremMax
rename TN018 HMOPremPer
rename TN023 NumPrivPlans
rename TN025_1 Plan1Primary
rename TN032_1 Plan1PayRX
rename TN033_1 Plan1CurEmp
rename TN034_1 Plan1ForEmp
rename TN035_1 Plan1CurSpEmp
rename TN036_1 Plan1ForSpEmp
rename TN037_1 Plan1HowPurch
rename TN039_1 Plan1PremPay
rename TN040_1 Plan1PremAmt
rename TN041_1 Plan1PremMin
rename TN042_1 Plan1PremMax
rename TN052_1 Plan1IsHMO
rename TN055_1 Plan1DocNetwork
rename TN056_1 Plan1PayOutNtwk
rename TN032_2 Plan2PayRX
rename TN033_2 Plan2CurEmp
rename TN034_2 Plan2ForEmp
rename TN035_2 Plan2CurSpEmp
rename TN036_2 Plan2ForSpEmp
rename TN037_2 Plan2HowPurch
rename TN039_2 Plan2PremPay
rename TN040_2 Plan2PremAmt
rename TN041_2 Plan2PremMin
rename TN042_2 Plan2PremMax
rename TN052_2 Plan2IsHMO
rename TN055_2 Plan2DocNetwork
rename TN056_2 Plan2PayOutNtwk
rename TN090 TotalInsPlans
rename TN071 HaveLTCIns
rename TN073 WhichPlanLTC
rename TN079 LTCPremAmt
rename TN080 LTCPremMin
rename TN081 LTCPremMax
rename TN083 LTCPremPer
rename TN091 EverWithoutIns
rename TN099 StayInHosp
rename TN100 HospNumStays
rename TN101 HospNumNights
rename TN102 HospCoverByIns
rename TN106 HospOOPAmt
rename TN107 HospOOPMin
rename TN108 HospOOPMax
rename TN114 StayInLTC
rename TN115 LTCNumStays
rename TN116 LTCNumNights
rename TN117 LTCNumMonths
rename TN118 LTCCoverByIns
rename TN119 LTCOOPAmt
rename TN120 LTCOOPMin
rename TN121 LTCOOPMax
rename TN147 DocVisNum
rename TN148 DocVisgt20
rename TN149 DocVisgt5
rename TN150 DocVisgt1
rename TN151 DocVisgt50
rename TN152 DocVisCoverByIns
rename TN156 DocVisOOPAmt
rename TN157 DocVisOOPMin
rename TN158 DocVisOOPMax
rename TN175 TakeRXDrugs
rename TN176 RXCoverByIns
rename TN180 RXOOPAmt
rename TN181 RXOOPMin
rename TN182 RXOOPMax
rename TN189 HoMedVisit
rename TN190 HoMedCoverByIns
rename TN194 HoMedOOPAmt
rename TN195 HoMedOOPMin
rename TN196 HoMedOOPMax
rename TN202 SpecFacVisit
rename TN239 SpecFacOOPAmt
rename TN246 SpecFacOOPMin
rename TN247 SpecFacOOPMax
rename TN204 HospAssigned
rename TN205 LTCAssigned
rename TN207 DocVisAssigned
rename TN209 RXAssigned
rename TN210 HoMedAssigned
rename TN211 TotalOOPAssigned
rename TN212 RecdHelpWithBills
rename TN215 BillHelpAmt
rename TN216 BillHelpMin
rename TN217 BillHelpMax
rename TN219M1 HowPayLargeBills
rename TC018 HaveCancer
rename TC030 HaveLungCond
rename TC036 HaveHeartCond
rename TC037 TakeRX4Heart
rename TC040 RecentHeartAtk
rename TC048 HaveCongHeartFail
rename TC053 HasHadStroke
rename TC062 RecentStroke
rename TC069 HaveMemProb
rename TC079 FallenRecently
rename TC080 NumFalls
rename TC081 InjuryFall
rename TC104 HaveFreqPain
rename TC105 PainSeverity
rename TG015 GetHelpDress
rename TG020 GetHelpCrossRoom
rename TG022 GetHelpBathing
rename TG024 GetHelpEating
rename TG029 GetHelpWithBed
rename TG031 GetHelpToilet
rename TG043 GetHelpCooking
rename TG046 GetHelpShopping
rename TG049 GetHelpPhoning
rename TG053 GetHelpTakingRX
rename TG061 GetHelpMoney
rename TA123 DeathYear
rename TA121 DeathMonth
rename TA131 DeathExpected

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

save ../Extracted/MergedExit04.dta, replace
