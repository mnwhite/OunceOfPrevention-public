clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/X08A_R.dct
sort HHID PN
save ../Extracted/X08A_R.dta, replace
clear all
infile using ../RawHRS/X08C_R.dct
sort HHID PN
save ../Extracted/X08C_R.dta, replace
clear all
infile using ../RawHRS/X08G_R.dct
sort HHID PN
save ../Extracted/X08G_R.dta, replace
clear all
infile using ../RawHRS/X08N_R.dct
sort HHID PN
save ../Extracted/X08N_R.dta, replace
clear all
infile using ../RawHRS/X08PR_R.dct
sort HHID PN
save ../Extracted/X08PR_R.dta, replace
merge 1:1 HHID PN using ../Extracted/X08A_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X08C_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X08G_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X08N_R.dta, sorted
drop _merge

keep HHID VSUBHH PN VN001 VN004 VN005 VN006 VN007 VN009 VN351 VN014 VN015 VN016 VN018 VN352 VN023 VN025_1 VN032_1 VN033_1 VN034_1 VN035_1 VN036_1 VN037_1 VN039_1 VN040_1 VN041_1 VN042_1 VN052_1 VN055_1 VN056_1 VN032_2 VN033_2 VN034_2 VN035_2 VN036_2 VN037_2 VN039_2 VN040_2 VN041_2 VN042_2 VN052_2 VN055_2 VN056_2 VN090 VN071 VN073 VN079 VN080 VN081 VN083 VN091 VN342 VN099 VN100 VN101 VN102 VN106 VN107 VN108 VN114 VN115 VN116 VN117 VN118 VN119 VN120 VN121 VN147 VN148 VN149 VN150 VN151 VN152 VN156 VN157 VN158 VN175 VN176 VN180 VN181 VN182 VN189 VN190 VN194 VN195 VN196 VN202 VN239 VN246 VN247 VN204 VN205 VN207 VN209 VN210 VN211 VN212 VN215 VN216 VN217 VN219M1 VC018 VC030 VC036 VC037 VC040 VC048 VC053 VC062 VC069 VC079 VC080 VC081 VC104 VC105 VG015 VG020 VG022 VG024 VG029 VG031 VG043 VG046 VG049 VG053 VG061 VA123 VA121 VA131
rename VSUBHH SUBHH
rename VN001 HaveMedicareA
rename VN004 HaveMedicareB
rename VN005 HadMedicaid
rename VN006 HaveMedicaid
rename VN007 HaveChampus
rename VN009 MedicareByHMO
rename VN351 HMOCoverDrugs
rename VN014 HMOPremAmt
rename VN015 HMOPremMin
rename VN016 HMOPremMax
rename VN018 HMOPremPer
rename VN352 HaveMedicareD
rename VN023 NumPrivPlans
rename VN025_1 Plan1Primary
rename VN032_1 Plan1PayRX
rename VN033_1 Plan1CurEmp
rename VN034_1 Plan1ForEmp
rename VN035_1 Plan1CurSpEmp
rename VN036_1 Plan1ForSpEmp
rename VN037_1 Plan1HowPurch
rename VN039_1 Plan1PremPay
rename VN040_1 Plan1PremAmt
rename VN041_1 Plan1PremMin
rename VN042_1 Plan1PremMax
rename VN052_1 Plan1IsHMO
rename VN055_1 Plan1DocNetwork
rename VN056_1 Plan1PayOutNtwk
rename VN032_2 Plan2PayRX
rename VN033_2 Plan2CurEmp
rename VN034_2 Plan2ForEmp
rename VN035_2 Plan2CurSpEmp
rename VN036_2 Plan2ForSpEmp
rename VN037_2 Plan2HowPurch
rename VN039_2 Plan2PremPay
rename VN040_2 Plan2PremAmt
rename VN041_2 Plan2PremMin
rename VN042_2 Plan2PremMax
rename VN052_2 Plan2IsHMO
rename VN055_2 Plan2DocNetwork
rename VN056_2 Plan2PayOutNtwk
rename VN090 TotalInsPlans
rename VN071 HaveLTCIns
rename VN073 WhichPlanLTC
rename VN079 LTCPremAmt
rename VN080 LTCPremMin
rename VN081 LTCPremMax
rename VN083 LTCPremPer
rename VN091 EverWithoutIns
rename VN342 NoHealthInsNow
rename VN099 StayInHosp
rename VN100 HospNumStays
rename VN101 HospNumNights
rename VN102 HospCoverByIns
rename VN106 HospOOPAmt
rename VN107 HospOOPMin
rename VN108 HospOOPMax
rename VN114 StayInLTC
rename VN115 LTCNumStays
rename VN116 LTCNumNights
rename VN117 LTCNumMonths
rename VN118 LTCCoverByIns
rename VN119 LTCOOPAmt
rename VN120 LTCOOPMin
rename VN121 LTCOOPMax
rename VN147 DocVisNum
rename VN148 DocVisgt20
rename VN149 DocVisgt5
rename VN150 DocVisgt1
rename VN151 DocVisgt50
rename VN152 DocVisCoverByIns
rename VN156 DocVisOOPAmt
rename VN157 DocVisOOPMin
rename VN158 DocVisOOPMax
rename VN175 TakeRXDrugs
rename VN176 RXCoverByIns
rename VN180 RXOOPAmt
rename VN181 RXOOPMin
rename VN182 RXOOPMax
rename VN189 HoMedVisit
rename VN190 HoMedCoverByIns
rename VN194 HoMedOOPAmt
rename VN195 HoMedOOPMin
rename VN196 HoMedOOPMax
rename VN202 SpecFacVisit
rename VN239 SpecFacOOPAmt
rename VN246 SpecFacOOPMin
rename VN247 SpecFacOOPMax
rename VN204 HospAssigned
rename VN205 LTCAssigned
rename VN207 DocVisAssigned
rename VN209 RXAssigned
rename VN210 HoMedAssigned
rename VN211 TotalOOPAssigned
rename VN212 RecdHelpWithBills
rename VN215 BillHelpAmt
rename VN216 BillHelpMin
rename VN217 BillHelpMax
rename VN219M1 HowPayLargeBills
rename VC018 HaveCancer
rename VC030 HaveLungCond
rename VC036 HaveHeartCond
rename VC037 TakeRX4Heart
rename VC040 RecentHeartAtk
rename VC048 HaveCongHeartFail
rename VC053 HasHadStroke
rename VC062 RecentStroke
rename VC069 HaveMemProb
rename VC079 FallenRecently
rename VC080 NumFalls
rename VC081 InjuryFall
rename VC104 HaveFreqPain
rename VC105 PainSeverity
rename VG015 GetHelpDress
rename VG020 GetHelpCrossRoom
rename VG022 GetHelpBathing
rename VG024 GetHelpEating
rename VG029 GetHelpWithBed
rename VG031 GetHelpToilet
rename VG043 GetHelpCooking
rename VG046 GetHelpShopping
rename VG049 GetHelpPhoning
rename VG053 GetHelpTakingRX
rename VG061 GetHelpMoney
rename VA123 DeathYear
rename VA121 DeathMonth
rename VA131 DeathExpected

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

save ../Extracted/MergedExit08.dta, replace
