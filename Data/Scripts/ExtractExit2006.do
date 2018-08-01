clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/X06A_R.dct
sort HHID PN
save ../Extracted/X06A_R.dta, replace
clear all
infile using ../RawHRS/X06C_R.dct
sort HHID PN
save ../Extracted/X06C_R.dta, replace
clear all
infile using ../RawHRS/X06G_R.dct
sort HHID PN
save ../Extracted/X06G_R.dta, replace
clear all
infile using ../RawHRS/X06N_R.dct
sort HHID PN
save ../Extracted/X06N_R.dta, replace
clear all
infile using ../RawHRS/X06PR_R.dct
sort HHID PN
save ../Extracted/X06PR_R.dta, replace
merge 1:1 HHID PN using ../Extracted/X06A_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X06C_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X06G_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X06N_R.dta, sorted
drop _merge

keep HHID USUBHH PN UN001 UN004 UN005 UN006 UN007 UN009 UN351 UN014 UN015 UN016 UN018 UN352 UN023 UN025_1 UN032_1 UN033_1 UN034_1 UN035_1 UN036_1 UN037_1 UN039_1 UN040_1 UN041_1 UN042_1 UN052_1 UN055_1 UN056_1 UN032_2 UN033_2 UN034_2 UN035_2 UN036_2 UN037_2 UN039_2 UN040_2 UN041_2 UN042_2 UN052_2 UN055_2 UN056_2 UN090 UN071 UN073 UN079 UN080 UN081 UN083 UN091 UN342 UN099 UN100 UN101 UN102 UN106 UN107 UN108 UN114 UN115 UN116 UN117 UN118 UN119 UN120 UN121 UN147 UN148 UN149 UN150 UN151 UN152 UN156 UN157 UN158 UN175 UN176 UN180 UN181 UN182 UN189 UN190 UN194 UN195 UN196 UN202 UN239 UN246 UN247 UN204 UN205 UN207 UN209 UN210 UN211 UN212 UN215 UN216 UN217 UN219M1 UC018 UC030 UC036 UC037 UC040 UC048 UC053 UC062 UC069 UC079 UC080 UC081 UC104 UC105 UG015 UG020 UG022 UG024 UG029 UG031 UG043 UG046 UG049 UG053 UG061 UA123 UA121 UA131
rename USUBHH SUBHH
rename UN001 HaveMedicareA
rename UN004 HaveMedicareB
rename UN005 HadMedicaid
rename UN006 HaveMedicaid
rename UN007 HaveChampus
rename UN009 MedicareByHMO
rename UN351 HMOCoverDrugs
rename UN014 HMOPremAmt
rename UN015 HMOPremMin
rename UN016 HMOPremMax
rename UN018 HMOPremPer
rename UN352 HaveMedicareD
rename UN023 NumPrivPlans
rename UN025_1 Plan1Primary
rename UN032_1 Plan1PayRX
rename UN033_1 Plan1CurEmp
rename UN034_1 Plan1ForEmp
rename UN035_1 Plan1CurSpEmp
rename UN036_1 Plan1ForSpEmp
rename UN037_1 Plan1HowPurch
rename UN039_1 Plan1PremPay
rename UN040_1 Plan1PremAmt
rename UN041_1 Plan1PremMin
rename UN042_1 Plan1PremMax
rename UN052_1 Plan1IsHMO
rename UN055_1 Plan1DocNetwork
rename UN056_1 Plan1PayOutNtwk
rename UN032_2 Plan2PayRX
rename UN033_2 Plan2CurEmp
rename UN034_2 Plan2ForEmp
rename UN035_2 Plan2CurSpEmp
rename UN036_2 Plan2ForSpEmp
rename UN037_2 Plan2HowPurch
rename UN039_2 Plan2PremPay
rename UN040_2 Plan2PremAmt
rename UN041_2 Plan2PremMin
rename UN042_2 Plan2PremMax
rename UN052_2 Plan2IsHMO
rename UN055_2 Plan2DocNetwork
rename UN056_2 Plan2PayOutNtwk
rename UN090 TotalInsPlans
rename UN071 HaveLTCIns
rename UN073 WhichPlanLTC
rename UN079 LTCPremAmt
rename UN080 LTCPremMin
rename UN081 LTCPremMax
rename UN083 LTCPremPer
rename UN091 EverWithoutIns
rename UN342 NoHealthInsNow
rename UN099 StayInHosp
rename UN100 HospNumStays
rename UN101 HospNumNights
rename UN102 HospCoverByIns
rename UN106 HospOOPAmt
rename UN107 HospOOPMin
rename UN108 HospOOPMax
rename UN114 StayInLTC
rename UN115 LTCNumStays
rename UN116 LTCNumNights
rename UN117 LTCNumMonths
rename UN118 LTCCoverByIns
rename UN119 LTCOOPAmt
rename UN120 LTCOOPMin
rename UN121 LTCOOPMax
rename UN147 DocVisNum
rename UN148 DocVisgt20
rename UN149 DocVisgt5
rename UN150 DocVisgt1
rename UN151 DocVisgt50
rename UN152 DocVisCoverByIns
rename UN156 DocVisOOPAmt
rename UN157 DocVisOOPMin
rename UN158 DocVisOOPMax
rename UN175 TakeRXDrugs
rename UN176 RXCoverByIns
rename UN180 RXOOPAmt
rename UN181 RXOOPMin
rename UN182 RXOOPMax
rename UN189 HoMedVisit
rename UN190 HoMedCoverByIns
rename UN194 HoMedOOPAmt
rename UN195 HoMedOOPMin
rename UN196 HoMedOOPMax
rename UN202 SpecFacVisit
rename UN239 SpecFacOOPAmt
rename UN246 SpecFacOOPMin
rename UN247 SpecFacOOPMax
rename UN204 HospAssigned
rename UN205 LTCAssigned
rename UN207 DocVisAssigned
rename UN209 RXAssigned
rename UN210 HoMedAssigned
rename UN211 TotalOOPAssigned
rename UN212 RecdHelpWithBills
rename UN215 BillHelpAmt
rename UN216 BillHelpMin
rename UN217 BillHelpMax
rename UN219M1 HowPayLargeBills
rename UC018 HaveCancer
rename UC030 HaveLungCond
rename UC036 HaveHeartCond
rename UC037 TakeRX4Heart
rename UC040 RecentHeartAtk
rename UC048 HaveCongHeartFail
rename UC053 HasHadStroke
rename UC062 RecentStroke
rename UC069 HaveMemProb
rename UC079 FallenRecently
rename UC080 NumFalls
rename UC081 InjuryFall
rename UC104 HaveFreqPain
rename UC105 PainSeverity
rename UG015 GetHelpDress
rename UG020 GetHelpCrossRoom
rename UG022 GetHelpBathing
rename UG024 GetHelpEating
rename UG029 GetHelpWithBed
rename UG031 GetHelpToilet
rename UG043 GetHelpCooking
rename UG046 GetHelpShopping
rename UG049 GetHelpPhoning
rename UG053 GetHelpTakingRX
rename UG061 GetHelpMoney
rename UA123 DeathYear
rename UA121 DeathMonth
rename UA131 DeathExpected

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

save ../Extracted/MergedExit06.dta, replace
