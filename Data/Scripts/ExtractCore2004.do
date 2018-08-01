clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H04A_R.dct
sort HHID PN
save ../Extracted/H04A_R.dta, replace
clear all
infile using ../RawHRS/H04A_H.dct
sort HHID JSUBHH
save ../Extracted/H04A_H.dta, replace
clear all
infile using ../RawHRS/H04C_R.dct
sort HHID PN
save ../Extracted/H04C_R.dta, replace
clear all
infile using ../RawHRS/H04G_R.dct
sort HHID PN
save ../Extracted/H04G_R.dta, replace
clear all
infile using ../RawHRS/H04J_R.dct
sort HHID PN
save ../Extracted/H04J_R.dta, replace
clear all
infile using ../RawHRS/H04N_R.dct
sort HHID PN
save ../Extracted/H04N_R.dta, replace
clear all
infile using ../RawHRS/H04PR_R.dct
sort HHID PN
save ../Extracted/H04PR_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H04A_R.dta, sorted
drop _merge
sort HHID JSUBHH
merge m:1 HHID JSUBHH using ../Extracted/H04A_H.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H04C_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H04G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H04J_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H04N_R.dta, sorted
drop _merge
sort HHID JSUBHH

keep HHID JSUBHH PN JN001 JN004 JN005 JN006 JN007 JN009 JN351 JN014 JN015 JN016 JN018 JN023 JN025_1 JN032_1 JN033_1 JN034_1 JN035_1 JN036_1 JN037_1 JN039_1 JN040_1 JN041_1 JN042_1 JN049_1a JN049_1b JN049_1c JN052_1 JN055_1 JN056_1 JN032_2 JN033_2 JN034_2 JN035_2 JN036_2 JN037_2 JN039_2 JN040_2 JN041_2 JN042_2 JN049_2a JN049_2b JN049_2c JN052_2 JN055_2 JN056_2 JN090 JN071 JN073 JN238 JN079 JN080 JN081 JN083 JN091 JN342 JN099 JN100 JN101 JN102 JN106 JN107 JN108 JN110 JN114 JN115 JN116 JN117 JN118 JN119 JN120 JN121 JN134 JN135 JN139 JN140 JN141 JN143 JN147 JN148 JN149 JN150 JN151 JN152 JN156 JN157 JN158 JN160 JN164 JN165 JN168 JN169 JN170 JN172 JN175 JN176 JN180 JN181 JN182 JN184 JN189 JN190 JN194 JN195 JN196 JN198 JN202 JN239 JN246 JN247 JN204 JN205 JN206 JN207 JN208 JN209 JN210 JN211 JN212 JN215 JN216 JN217 JN219M1 JC001 JC002 JC005 JC006 JC008 JC010 JC011 JC012 JC015 JC018 JC024 JC030 JC032 JC035 JC036 JC037 JC040 JC042 JC045 JC046 JC047 JC048 JC050 JC053 JC055 JC060 JC062 JC065 JC068 JC069 JC070 JC074 JC075 JC219 JC220 JC221 JC222 JC079 JC080 JC081 JC087 JC088 JC089 JC090 JC091 JC095 JC102 JC103 JC104 JC105 JC106 JC109 JC110 JC112 JC113 JC114 JC223 JC224 JC225 JC143 JC144 JC145 JC146 JC147 JC148 JC149 JC229 JC150 JA019 JA028 JA099 JX060_R JX065_R JX004_R JX067_R JG001 JG002 JG003 JG004 JG005 JG006 JG007 JG008 JG009 JG010 JG011 JG012 JG014 JG015 JG016 JG017 JG020 JG021 JG022 JG023 JG024 JG025 JG026 JG029 JG030 JG031 JG040 JG041 JG042 JG043 JG044 JG045 JG046 JG047 JG048 JG049 JG050 JG052 JG053 JG058 JG059 JG060 JG061 JJ005M1 JJ578 JC118 JC119 JC129 JC130
rename JSUBHH SUBHH
rename JN001 HaveMedicareA
rename JN004 HaveMedicareB
rename JN005 HadMedicaid
rename JN006 HaveMedicaid
rename JN007 HaveChampus
rename JN009 MedicareByHMO
rename JN351 HMOCoverDrugs
rename JN014 HMOPremAmt
rename JN015 HMOPremMin
rename JN016 HMOPremMax
rename JN018 HMOPremPer
rename JN023 NumPrivPlans
rename JN025_1 Plan1Primary
rename JN032_1 Plan1PayRX
rename JN033_1 Plan1CurEmp
rename JN034_1 Plan1ForEmp
rename JN035_1 Plan1CurSpEmp
rename JN036_1 Plan1ForSpEmp
rename JN037_1 Plan1HowPurch
rename JN039_1 Plan1PremPay
rename JN040_1 Plan1PremAmt
rename JN041_1 Plan1PremMin
rename JN042_1 Plan1PremMax
rename JN049_1a Plan1WhoCoverA
rename JN049_1b Plan1WhoCoverB
rename JN049_1c Plan1WhoCoverC
rename JN052_1 Plan1IsHMO
rename JN055_1 Plan1DocNetwork
rename JN056_1 Plan1PayOutNtwk
rename JN032_2 Plan2PayRX
rename JN033_2 Plan2CurEmp
rename JN034_2 Plan2ForEmp
rename JN035_2 Plan2CurSpEmp
rename JN036_2 Plan2ForSpEmp
rename JN037_2 Plan2HowPurch
rename JN039_2 Plan2PremPay
rename JN040_2 Plan2PremAmt
rename JN041_2 Plan2PremMin
rename JN042_2 Plan2PremMax
rename JN049_2a Plan2WhoCoverA
rename JN049_2b Plan2WhoCoverB
rename JN049_2c Plan2WhoCoverC
rename JN052_2 Plan2IsHMO
rename JN055_2 Plan2DocNetwork
rename JN056_2 Plan2PayOutNtwk
rename JN090 TotalInsPlans
rename JN071 HaveLTCIns
rename JN073 WhichPlanLTC
rename JN238 LTCCoverSpouse
rename JN079 LTCPremAmt
rename JN080 LTCPremMin
rename JN081 LTCPremMax
rename JN083 LTCPremPer
rename JN091 EverWithoutIns
rename JN342 NoHealthInsNow
rename JN099 StayInHosp
rename JN100 HospNumStays
rename JN101 HospNumNights
rename JN102 HospCoverByIns
rename JN106 HospOOPAmt
rename JN107 HospOOPMin
rename JN108 HospOOPMax
rename JN110 HospExpectInsCov
rename JN114 StayInLTC
rename JN115 LTCNumStays
rename JN116 LTCNumNights
rename JN117 LTCNumMonths
rename JN118 LTCCoverByIns
rename JN119 LTCOOPAmt
rename JN120 LTCOOPMin
rename JN121 LTCOOPMax
rename JN134 HadOutSurg
rename JN135 OutSurgCoverByIns
rename JN139 OutSurgOOPAmt
rename JN140 OutSurgOOPMin
rename JN141 OutSurgOOPMax
rename JN143 OutSurgExpectInsCov
rename JN147 DocVisNum
rename JN148 DocVisgt20
rename JN149 DocVisgt5
rename JN150 DocVisgt1
rename JN151 DocVisgt50
rename JN152 DocVisCoverByIns
rename JN156 DocVisOOPAmt
rename JN157 DocVisOOPMin
rename JN158 DocVisOOPMax
rename JN160 DocVisExpectInsCov
rename JN164 DentistVisit
rename JN165 DentistCoverByIns
rename JN168 DentistOOPAmt
rename JN169 DentistOOPMin
rename JN170 DentistOOPMax
rename JN172 DentistExpectInsCov
rename JN175 TakeRXDrugs
rename JN176 RXCoverByIns
rename JN180 RXOOPAmt
rename JN181 RXOOPMin
rename JN182 RXOOPMax
rename JN184 RXExpectInsCov
rename JN189 HoMedVisit
rename JN190 HoMedCoverByIns
rename JN194 HoMedOOPAmt
rename JN195 HoMedOOPMin
rename JN196 HoMedOOPMax
rename JN198 HoMedExpectInsCov
rename JN202 SpecFacVisit
rename JN239 SpecFacOOPAmt
rename JN246 SpecFacOOPMin
rename JN247 SpecFacOOPMax
rename JN204 HospAssigned
rename JN205 LTCAssigned
rename JN206 OutSurgAssigned
rename JN207 DocVisAssigned
rename JN208 DentistAssigned
rename JN209 RXAssigned
rename JN210 HoMedAssigned
rename JN211 TotalOOPAssigned
rename JN212 RecdHelpWithBills
rename JN215 BillHelpAmt
rename JN216 BillHelpMin
rename JN217 BillHelpMax
rename JN219M1 HowPayLargeBills
rename JC001 HealthStatus
rename JC002 HealthChange
rename JC005 HaveHighBP
rename JC006 TakeRX4HighBP
rename JC008 BPUnderControl
rename JC010 HaveDiabetes
rename JC011 TakeRX4DiabOral
rename JC012 TakeRXInsulin
rename JC015 DiabUnderControl
rename JC018 HaveCancer
rename JC024 HaveNewCancer
rename JC030 HaveLungCond
rename JC032 TakeRX4Lung
rename JC035 LungCondLimitAct
rename JC036 HaveHeartCond
rename JC037 TakeRX4Heart
rename JC040 RecentHeartAtk
rename JC042 TakeRX4HeartAtk
rename JC045 HaveAngina
rename JC046 TakeRX4Angina
rename JC047 AnginaLimitAct
rename JC048 HaveCongHeartFail
rename JC050 TakeRX4HeartFail
rename JC053 HasHadStroke
rename JC055 StrokeProblems
rename JC060 TakeRX4Stroke
rename JC062 RecentStroke
rename JC065 HavePsychProb
rename JC068 TakeRX4Depress
rename JC069 HaveMemProb
rename JC070 HaveArthritis
rename JC074 TakeRX4Arthritis
rename JC075 ArthritisLimitAct
rename JC219 HaveOsteoArth
rename JC220 HaveRheumArth
rename JC221 HaveGoutLupus
rename JC222 HaveInjuryArth
rename JC079 FallenRecently
rename JC080 NumFalls
rename JC081 InjuryFall
rename JC087 LostAnyUrine
rename JC088 LostUrineDaysAmt
rename JC089 LostUrineDaysgt5
rename JC090 LostUrineDaysgt15
rename JC091 LostUrineHowMuch
rename JC095 VisionQuality
rename JC102 UseHearingAid
rename JC103 HearingQuality
rename JC104 HaveFreqPain
rename JC105 PainSeverity
rename JC106 PainLimitAct
rename JC109 HadFluShot
rename JC110 HadCholTest
rename JC112 HadMammo
rename JC113 HadPapSmear
rename JC114 HadProstateEx
rename JC223 HowOftenVigAct
rename JC224 HowOftenModAct
rename JC225 HowOftenMildAct
rename JC143 HaveAnkleSwell
rename JC144 HaveShortBreath
rename JC145 HaveDizziness
rename JC146 HaveBackProb
rename JC147 HaveHeadache
rename JC148 HaveFatigue
rename JC149 HaveCoughing
rename JC229 DaysInBed
rename JC150 Depressed2Weeks
rename JA019 CurrentAge
rename JA028 InNursingHome
rename JA099 NumResChildren
rename JX060_R Sex
rename JX065_R CoupleStatus
rename JX004_R MonthBorn
rename JX067_R YearBorn
rename JG001 DiffWalkBlocks
rename JG002 DiffJogMile
rename JG003 DiffWalk1Block
rename JG004 DiffSitting
rename JG005 DiffStanding
rename JG006 DiffStairs
rename JG007 Diff1Stair
rename JG008 DiffStooping
rename JG009 DiffReaching
rename JG010 DiffPushing
rename JG011 DiffCarrying
rename JG012 DiffPickDime
rename JG014 DiffDressing
rename JG015 GetHelpDress
rename JG016 DiffCrossRoom
rename JG017 UseDevCrossRoom
rename JG020 GetHelpCrossRoom
rename JG021 DiffBathing
rename JG022 GetHelpBathing
rename JG023 DiffEating
rename JG024 GetHelpEating
rename JG025 DiffWithBed
rename JG026 UseDevWithBed
rename JG029 GetHelpWithBed
rename JG030 DiffToilet
rename JG031 GetHelpToilet
rename JG040 DiffUsingMap
rename JG041 DiffCooking
rename JG042 NoCookBCHealth
rename JG043 GetHelpCooking
rename JG044 DiffShopping
rename JG045 NoShopBCHealth
rename JG046 GetHelpShopping
rename JG047 DiffPhoning
rename JG048 NoPhoneBCHealth
rename JG049 GetHelpPhoning
rename JG050 DiffTakingRX
rename JG052 NoRXBCHealth
rename JG053 GetHelpTakingRX
rename JG058 GetHelpHousework
rename JG059 DiffMoney
rename JG060 NoMoneyBCHealth
rename JG061 GetHelpMoney
rename JJ005M1 EmpStatus
rename JJ578 IsRetired
rename JC118 CigsPerDay
rename JC119 PacksPerDay
rename JC129 DaysWeekDrink
rename JC130 DrinksPerDay

do DefineLabels.do
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
label variable Plan1WhoCoverA "Who else covered by plan 1 (first)?"
label variable Plan1WhoCoverB "Who else covered by plan 1 (second)?"
label variable Plan1WhoCoverC "Who else covered by plan 1 (third)?"
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
label variable Plan2WhoCoverA "Who else covered by plan 2 (first)?"
label variable Plan2WhoCoverB "Who else covered by plan 2 (second)?"
label variable Plan2WhoCoverC "Who else covered by plan 2 (third)?"
label variable Plan2IsHMO "Is plan 2 an HMO?"
label variable Plan2DocNetwork "plan 2 have a doctor network?"
label variable Plan2PayOutNtwk "plan 2 pay for outside network care?"
label variable TotalInsPlans "Total number of insurance plans"
label variable HaveLTCIns "Have long term care insurance?"
label variable WhichPlanLTC "Which plan has LTC?"
label variable LTCCoverSpouse "Does LTC insurance cover spouse?"
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
label variable HospExpectInsCov "Expect ins to cover hospital stay?"
label variable StayInLTC "Ever stay in long term care?"
label variable LTCNumStays "Number of stays in long term care"
label variable LTCNumNights "Number of nights spent in LTC"
label variable LTCNumMonths "Number of months spent in LTC"
label variable LTCCoverByIns "How much of LTC stay covered by ins?"
label variable LTCOOPAmt "Out of pocket LTC bills amount"
label variable LTCOOPMin "Out of pocket LTC bills minimum"
label variable LTCOOPMax "Out of pocket LTC bills maximum"
label variable HadOutSurg "Had outpatient surgery?"
label variable OutSurgCoverByIns "How much of surgery covered by ins?"
label variable OutSurgOOPAmt "Out of pocket surgery costs amount"
label variable OutSurgOOPMin "Out of pocket surgery costs minimum"
label variable OutSurgOOPMax "Out of pocket surgery costs maximum"
label variable OutSurgExpectInsCov "Expect ins to cover outpatient surgery?"
label variable DocVisNum "Number other doctor consultations"
label variable DocVisgt20 "Doctor visits relative to 20?"
label variable DocVisgt5 "Doctor visits relative to 5?"
label variable DocVisgt1 "Doctor visits relative to 1?"
label variable DocVisgt50 "Doctor visits relative to 50?"
label variable DocVisCoverByIns "How much of doc visits covered by ins?"
label variable DocVisOOPAmt "Out of pocket doc visits amount"
label variable DocVisOOPMin "Out of pocket doc visits minimum"
label variable DocVisOOPMax "Out of pocket doc visits maximum"
label variable DocVisExpectInsCov "Expect ins to cover doc visits?"
label variable DentistVisit "Seen dentist?"
label variable DentistCoverByIns "How much of dentist covered by ins?"
label variable DentistOOPAmt "Out of pocket dental bills amount"
label variable DentistOOPMin "Out of pocket dental bills minimum"
label variable DentistOOPMax "Out of pocket dental bills maximum"
label variable DentistExpectInsCov "Expect ins to cover dentist bills?"
label variable TakeRXDrugs "Regularly take prescription drugs?"
label variable RXCoverByIns "How much of drugs covered by ins?"
label variable RXOOPAmt "Out of pocket drugs/month amount"
label variable RXOOPMin "Out of pocket drugs/month minimum"
label variable RXOOPMax "Out of pocket drugs/month maximum"
label variable RXExpectInsCov "Expect drugs to be covered by ins?"
label variable HoMedVisit "Received home medical care?"
label variable HoMedCoverByIns "How much of home care covered by ins?"
label variable HoMedOOPAmt "Out of pocket home care amount"
label variable HoMedOOPMin "Out of pocket home care minimum"
label variable HoMedOOPMax "Out of pocket home care maximum"
label variable HoMedExpectInsCov "Expect ins to cover home care?"
label variable SpecFacVisit "Used other special facility?"
label variable SpecFacOOPAmt "Out of pocket special facility amount"
label variable SpecFacOOPMin "Out of pocket special facility minimum"
label variable SpecFacOOPMax "Out of pocket special facility maximum"
label variable HospAssigned "Assigned hospital costs"
label variable LTCAssigned "Assigned long term care  costs"
label variable OutSurgAssigned "Assigned outpatient surgery costs"
label variable DocVisAssigned "Assigned doctor visits costs"
label variable DentistAssigned "Assigned dentist costs"
label variable RXAssigned "Assigned prescription costs"
label variable HoMedAssigned "Assigned home care costs"
label variable TotalOOPAssigned "Assigned total out of pocket costs"
label variable RecdHelpWithBills "Received help with paying med bills?"
label variable BillHelpAmt "Med bill help received amount"
label variable BillHelpMin "Med bill help received minimum"
label variable BillHelpMax "Med bill help received maximum"
label variable HowPayLargeBills "How pay for large medical bills?"
label variable HealthStatus "Health status self report"
label variable HealthChange "Health better or worse than before?"
label variable HaveHighBP "Have high blood pressure?"
label variable TakeRX4HighBP "Taking medication for blood pressure?"
label variable BPUnderControl "Is blood pressure under control?"
label variable HaveDiabetes "Have diabetes?"
label variable TakeRX4DiabOral "Taking oral diabetes medication?"
label variable TakeRXInsulin "Taking insulin?"
label variable DiabUnderControl "Is diabetes under control?"
label variable HaveCancer "Have cancer?"
label variable HaveNewCancer "Have new non-skin cancer?"
label variable HaveLungCond "Have lung condition?"
label variable TakeRX4Lung "Taking medication for lung condition?"
label variable LungCondLimitAct "Does lung condition limit activities?"
label variable HaveHeartCond "Have heart condition?"
label variable TakeRX4Heart "Taking medication for heart condition?"
label variable RecentHeartAtk "Had heart attack in past two years?"
label variable TakeRX4HeartAtk "Taking medication for heart attack?"
label variable HaveAngina "Have angina or chest pains?"
label variable TakeRX4Angina "Taking medication for angina?"
label variable AnginaLimitAct "Does angina limit activities?"
label variable HaveCongHeartFail "Have congestive heart failure?"
label variable TakeRX4HeartFail "Taking medication for heart failure?"
label variable HasHadStroke "Has ever had a stroke?"
label variable StrokeProblems "Problems remaining because of stroke?"
label variable TakeRX4Stroke "Taking medication for stroke?"
label variable RecentStroke "Had stroke in past two years?"
label variable HavePsychProb "Have psychiatric problems?"
label variable TakeRX4Depress "Take antidepressant drugs?"
label variable HaveMemProb "Have memory problems?"
label variable HaveArthritis "Have arthritis?"
label variable TakeRX4Arthritis "Taking medication for arthritis?"
label variable ArthritisLimitAct "Does arthritis limit activities?"
label variable HaveOsteoArth "Have osteoarthritis?"
label variable HaveRheumArth "Have rheumatoid arthritis?"
label variable HaveGoutLupus "Have gout or lupus?"
label variable HaveInjuryArth "Have arthritis related to injury?"
label variable FallenRecently "Has fallen recently"
label variable NumFalls "Number of times fallen"
label variable InjuryFall "Serious injury in any falls?"
label variable LostAnyUrine "Lost any urine in past year?"
label variable LostUrineDaysAmt "Days in past month lost urine"
label variable LostUrineDaysgt5 "Days lost urine relative to 5"
label variable LostUrineDaysgt15 "Days lost urine relative to 15"
label variable LostUrineHowMuch "How much urine lost each time?"
label variable VisionQuality "Quality of eyesight with lenses"
label variable UseHearingAid "Wear a hearing aid?"
label variable HearingQuality "Quality of hearing (with aid)"
label variable HaveFreqPain "Often have pain?"
label variable PainSeverity "Severity of pain"
label variable PainLimitAct "Does pain limit activities?"
label variable HadFluShot "Had flu shot?"
label variable HadCholTest "Had blood test for cholesterol?"
label variable HadMammo "Had mammogram?"
label variable HadPapSmear "Had pap smear?"
label variable HadProstateEx "Had prostate exam?"
label variable HowOftenVigAct "How often do vigorous activity?"
label variable HowOftenModAct "How often do moderate activity?"
label variable HowOftenMildAct "How often do mild activity?"
label variable HaveAnkleSwell "Have persistent ankle swelling?"
label variable HaveShortBreath "Have shortness of breath?"
label variable HaveDizziness "Have persistent dizziness?"
label variable HaveBackProb "Have back problems?"
label variable HaveHeadache "Have persistent headaches?"
label variable HaveFatigue "Have severe fatigue?"
label variable HaveCoughing "Have persistent coughing?"
label variable DaysInBed "Days spent in bed in last month"
label variable Depressed2Weeks "Felt depressed for two weeks?"
label variable CurrentAge "Respondents current age"
label variable InNursingHome "Is living in nursing home"
label variable NumResChildren "Number of resident children"
label variable Sex "Sex"
label variable CoupleStatus "Couple status"
label variable MonthBorn "Month born"
label variable YearBorn "Year born"
label variable DiffWalkBlocks "Difficulty walking several blocks?"
label variable DiffJogMile "Difficulty jogging a mile?"
label variable DiffWalk1Block "Difficulty walking one block?"
label variable DiffSitting "Difficulty sitting for two hours?"
label variable DiffStanding "Difficulty getting up from a chair?"
label variable DiffStairs "Difficulty climbing flights of stairs?"
label variable Diff1Stair "Difficulty climbing one flight of stairs?"
label variable DiffStooping "Difficulty stooping or kneeling?"
label variable DiffReaching "Difficulty reaching arms upward?"
label variable DiffPushing "Difficulty pushing living room chair?"
label variable DiffCarrying "Difficulty carrying heavy grocery bag?"
label variable DiffPickDime "Difficulty picking up a dime?"
label variable DiffDressing "Difficulty getting dressed?"
label variable GetHelpDress "Ever get help getting dressed?"
label variable DiffCrossRoom "Difficulty walking across a room?"
label variable UseDevCrossRoom "Use device when crossing a room?"
label variable GetHelpCrossRoom "Ever get help crossing a room?"
label variable DiffBathing "Difficulty bathing or showering?"
label variable GetHelpBathing "Ever get help showering?"
label variable DiffEating "Difficulty cutting and eating food?"
label variable GetHelpEating "Ever get help eating?"
label variable DiffWithBed "Difficulty getting in/out of bed?"
label variable UseDevWithBed "Use device to get in/out of bed?"
label variable GetHelpWithBed "Ever get help to get in bed?"
label variable DiffToilet "Difficulty using the toilet?"
label variable GetHelpToilet "Ever get help using the toilet?"
label variable DiffUsingMap "Difficulty using a map?"
label variable DiffCooking "Difficulty preparing a hot meal?"
label variable NoCookBCHealth "No hot meal due to health problem?"
label variable GetHelpCooking "Ever get help preparing a hot meal?"
label variable DiffShopping "Difficulty shopping for groceries?"
label variable NoShopBCHealth "No groceries because of health prob?"
label variable GetHelpShopping "Ever get help with groceries?"
label variable DiffPhoning "Difficulty making phone calls?"
label variable NoPhoneBCHealth "No phone because of health problem?"
label variable GetHelpPhoning "Ever get help making phone calls?"
label variable DiffTakingRX "Difficulty taking medications?"
label variable NoRXBCHealth "No take meds b/c of health problem?"
label variable GetHelpTakingRX "Ever get help taking medications?"
label variable GetHelpHousework "Ever get help with housework?"
label variable DiffMoney "Difficulty managing money?"
label variable NoMoneyBCHealth "Not manage money b/c of health prob?"
label variable GetHelpMoney "Ever get help managing money?"
label variable EmpStatus "Current employment status?"
label variable IsRetired "Consider self retired?"
label variable CigsPerDay "Cigarettes per day"
label variable PacksPerDay "Packs of cigs per day"
label variable DaysWeekDrink "Days a week with drinking?"
label variable DrinksPerDay "Drinks per day when drinking?"

label values HaveMedicareA YesNo
label values HaveMedicareB YesNo
label values HadMedicaid YesNo
label values HaveMedicaid YesNo
label values HaveChampus YesNo
label values MedicareByHMO YesNo
label values HMOCoverDrugs YesNo
summarize HMOPremAmt
local j = ceil(log(r(max))/log(10))
label values HMOPremAmt Value`j'
summarize HMOPremMin
local j = ceil(log(r(max))/log(10))
label values HMOPremMin Value`j'
summarize HMOPremMax
local j = ceil(log(r(max))/log(10))
label values HMOPremMax Value`j'
label values HMOPremPer Period1
summarize NumPrivPlans
local j = ceil(log(r(max))/log(10))
label values NumPrivPlans Value`j'
label values Plan1Primary IsPrimary
label values Plan1PayRX YesNo
label values Plan1CurEmp YesNo
label values Plan1ForEmp YesNo
label values Plan1CurSpEmp YesNo
label values Plan1ForSpEmp YesNo
label values Plan1HowPurch WherePurch
label values Plan1PremPay AllSomeNone
summarize Plan1PremAmt
local j = ceil(log(r(max))/log(10))
label values Plan1PremAmt Value`j'
summarize Plan1PremMin
local j = ceil(log(r(max))/log(10))
label values Plan1PremMin Value`j'
summarize Plan1PremMax
local j = ceil(log(r(max))/log(10))
label values Plan1PremMax Value`j'
label values Plan1IsHMO YesNo
label values Plan1DocNetwork YesNo
label values Plan1PayOutNtwk YesNoRef
label values Plan2PayRX YesNo
label values Plan2CurEmp YesNo
label values Plan2ForEmp YesNo
label values Plan2CurSpEmp YesNo
label values Plan2ForSpEmp YesNo
label values Plan2HowPurch WherePurch
label values Plan2PremPay AllSomeNone
summarize Plan2PremAmt
local j = ceil(log(r(max))/log(10))
label values Plan2PremAmt Value`j'
summarize Plan2PremMin
local j = ceil(log(r(max))/log(10))
label values Plan2PremMin Value`j'
summarize Plan2PremMax
local j = ceil(log(r(max))/log(10))
label values Plan2PremMax Value`j'
label values Plan2IsHMO YesNo
label values Plan2DocNetwork YesNo
label values Plan2PayOutNtwk YesNoRef
label values HaveLTCIns YesNo
label values LTCCoverSpouse YesNo
summarize LTCPremAmt
local j = ceil(log(r(max))/log(10))
label values LTCPremAmt Value`j'
summarize LTCPremMin
local j = ceil(log(r(max))/log(10))
label values LTCPremMin Value`j'
summarize LTCPremMax
local j = ceil(log(r(max))/log(10))
label values LTCPremMax Value`j'
label values LTCPremPer Period1
label values EverWithoutIns YesNo
label values NoHealthInsNow YesNo
label values StayInHosp YesNo
summarize HospNumStays
local j = ceil(log(r(max))/log(10))
label values HospNumStays Value`j'
summarize HospNumNights
local j = ceil(log(r(max))/log(10))
label values HospNumNights Value`j'
label values HospCoverByIns InsCoverage
summarize HospOOPAmt
local j = ceil(log(r(max))/log(10))
label values HospOOPAmt Value`j'
summarize HospOOPMin
local j = ceil(log(r(max))/log(10))
label values HospOOPMin Value`j'
summarize HospOOPMax
local j = ceil(log(r(max))/log(10))
label values HospOOPMax Value`j'
label values HospExpectInsCov YesNo
label values StayInLTC YesNo
summarize LTCNumStays
local j = ceil(log(r(max))/log(10))
label values LTCNumStays Value`j'
summarize LTCNumNights
local j = ceil(log(r(max))/log(10))
label values LTCNumNights Value`j'
summarize LTCNumMonths
local j = ceil(log(r(max))/log(10))
label values LTCNumMonths Value`j'
label values LTCCoverByIns InsCoverage
summarize LTCOOPAmt
local j = ceil(log(r(max))/log(10))
label values LTCOOPAmt Value`j'
summarize LTCOOPMin
local j = ceil(log(r(max))/log(10))
label values LTCOOPMin Value`j'
summarize LTCOOPMax
local j = ceil(log(r(max))/log(10))
label values LTCOOPMax Value`j'
label values HadOutSurg YesNo
label values OutSurgCoverByIns InsCoverage
summarize OutSurgOOPAmt
local j = ceil(log(r(max))/log(10))
label values OutSurgOOPAmt Value`j'
summarize OutSurgOOPMin
local j = ceil(log(r(max))/log(10))
label values OutSurgOOPMin Value`j'
summarize OutSurgOOPMax
local j = ceil(log(r(max))/log(10))
label values OutSurgOOPMax Value`j'
label values OutSurgExpectInsCov YesNo
summarize DocVisNum
local j = ceil(log(r(max))/log(10))
label values DocVisNum Value`j'
label values DocVisgt20 MoreLess1
label values DocVisgt5 MoreLess1
label values DocVisgt1 MoreLess1
label values DocVisgt50 MoreLess1
label values DocVisCoverByIns InsCoverage
summarize DocVisOOPAmt
local j = ceil(log(r(max))/log(10))
label values DocVisOOPAmt Value`j'
summarize DocVisOOPMin
local j = ceil(log(r(max))/log(10))
label values DocVisOOPMin Value`j'
summarize DocVisOOPMax
local j = ceil(log(r(max))/log(10))
label values DocVisOOPMax Value`j'
label values DocVisExpectInsCov YesNo
label values DentistVisit YesNo
label values DentistCoverByIns InsCoverage
summarize DentistOOPAmt
local j = ceil(log(r(max))/log(10))
label values DentistOOPAmt Value`j'
summarize DentistOOPMin
local j = ceil(log(r(max))/log(10))
label values DentistOOPMin Value`j'
summarize DentistOOPMax
local j = ceil(log(r(max))/log(10))
label values DentistOOPMax Value`j'
label values DentistExpectInsCov YesNo
label values TakeRXDrugs YesNoRX
label values RXCoverByIns InsCoverage
summarize RXOOPAmt
local j = ceil(log(r(max))/log(10))
label values RXOOPAmt Value`j'
summarize RXOOPMin
local j = ceil(log(r(max))/log(10))
label values RXOOPMin Value`j'
summarize RXOOPMax
local j = ceil(log(r(max))/log(10))
label values RXOOPMax Value`j'
label values RXExpectInsCov YesNo
label values HoMedVisit YesNo
label values HoMedCoverByIns InsCoverage
summarize HoMedOOPAmt
local j = ceil(log(r(max))/log(10))
label values HoMedOOPAmt Value`j'
summarize HoMedOOPMin
local j = ceil(log(r(max))/log(10))
label values HoMedOOPMin Value`j'
summarize HoMedOOPMax
local j = ceil(log(r(max))/log(10))
label values HoMedOOPMax Value`j'
label values HoMedExpectInsCov YesNo
label values SpecFacVisit YesNo
summarize SpecFacOOPAmt
local j = ceil(log(r(max))/log(10))
label values SpecFacOOPAmt Value`j'
summarize SpecFacOOPMin
local j = ceil(log(r(max))/log(10))
label values SpecFacOOPMin Value`j'
summarize SpecFacOOPMax
local j = ceil(log(r(max))/log(10))
label values SpecFacOOPMax Value`j'
summarize HospAssigned
local j = ceil(log(r(max))/log(10))
label values HospAssigned Value`j'
summarize LTCAssigned
local j = ceil(log(r(max))/log(10))
label values LTCAssigned Value`j'
summarize OutSurgAssigned
local j = ceil(log(r(max))/log(10))
label values OutSurgAssigned Value`j'
summarize DocVisAssigned
local j = ceil(log(r(max))/log(10))
label values DocVisAssigned Value`j'
summarize DentistAssigned
local j = ceil(log(r(max))/log(10))
label values DentistAssigned Value`j'
summarize RXAssigned
local j = ceil(log(r(max))/log(10))
label values RXAssigned Value`j'
summarize HoMedAssigned
local j = ceil(log(r(max))/log(10))
label values HoMedAssigned Value`j'
summarize TotalOOPAssigned
local j = ceil(log(r(max))/log(10))
label values TotalOOPAssigned Value`j'
label values RecdHelpWithBills YesNo
summarize BillHelpAmt
local j = ceil(log(r(max))/log(10))
label values BillHelpAmt Value`j'
summarize BillHelpMin
local j = ceil(log(r(max))/log(10))
label values BillHelpMin Value`j'
summarize BillHelpMax
local j = ceil(log(r(max))/log(10))
label values BillHelpMax Value`j'
label values HowPayLargeBills HowPayBig
label values HealthStatus Health
label values HealthChange BetWorse
label values HaveHighBP DispYesNo
label values TakeRX4HighBP YesNo
label values BPUnderControl YesNo
label values HaveDiabetes DispYesNo
label values TakeRX4DiabOral YesNo
label values TakeRXInsulin YesNo
label values DiabUnderControl YesNo
label values HaveCancer DispYesNo
label values HaveNewCancer YesNo
label values HaveLungCond DispYesNo
label values TakeRX4Lung YesNo
label values LungCondLimitAct YesNo
label values HaveHeartCond DispYesNo
label values TakeRX4Heart YesNo
label values RecentHeartAtk YesNo
label values TakeRX4HeartAtk YesNo
label values HaveAngina DispYesNo
label values TakeRX4Angina YesNo
label values AnginaLimitAct YesNo
label values HaveCongHeartFail DispYesNo
label values TakeRX4HeartFail YesNo
label values HasHadStroke DispYesNo
label values StrokeProblems YesNo
label values TakeRX4Stroke YesNo
label values RecentStroke YesNo
label values HavePsychProb DispYesNo
label values TakeRX4Depress YesNo
label values HaveMemProb DispYesNo
label values HaveArthritis DispYesNo
label values TakeRX4Arthritis YesNo
label values ArthritisLimitAct YesNo
label values HaveOsteoArth DispYesNo
label values HaveRheumArth DispYesNo
label values HaveGoutLupus DispYesNo
label values HaveInjuryArth DispYesNo
label values FallenRecently YesNo
summarize NumFalls
local j = ceil(log(r(max))/log(10))
label values NumFalls Value`j'
label values InjuryFall YesNo
label values LostAnyUrine YesNo
summarize LostUrineDaysAmt
local j = ceil(log(r(max))/log(10))
label values LostUrineDaysAmt Value`j'
label values LostUrineDaysgt5 YesNo
label values LostUrineDaysgt15 YesNo
label values LostUrineHowMuch UrineAmt
label values VisionQuality Health
label values UseHearingAid YesNo
label values HearingQuality Health
label values HaveFreqPain YesNo
label values PainLimitAct YesNo
label values HadFluShot YesNo
label values HadCholTest YesNo
label values HadMammo YesNoExam
label values HadPapSmear YesNoExam
label values HadProstateEx YesNoExam
label values HowOftenVigAct HowOften
label values HowOftenModAct HowOften
label values HowOftenMildAct HowOften
label values HaveAnkleSwell YesNo
label values HaveShortBreath YesNo
label values HaveDizziness YesNo
label values HaveBackProb YesNo
label values HaveHeadache YesNo
label values HaveFatigue YesNo
label values HaveCoughing YesNo
summarize DaysInBed
local j = ceil(log(r(max))/log(10))
label values DaysInBed Value`j'
label values Depressed2Weeks YesNo
label values InNursingHome YesNo
label values Sex Gender
label values CoupleStatus Couple
summarize MonthBorn
local j = ceil(log(r(max))/log(10))
label values MonthBorn Value`j'
label values DiffWalkBlocks ActYesNo
label values DiffJogMile ActYesNo
label values DiffWalk1Block ActYesNo
label values DiffSitting ActYesNo
label values DiffStanding ActYesNo
label values DiffStairs ActYesNo
label values Diff1Stair ActYesNo
label values DiffStooping ActYesNo
label values DiffReaching ActYesNo
label values DiffPushing ActYesNo
label values DiffCarrying ActYesNo
label values DiffPickDime ActYesNo
label values DiffDressing ActYesNo
label values GetHelpDress YesNo
label values DiffCrossRoom ActYesNo
label values UseDevCrossRoom YesNo
label values GetHelpCrossRoom YesNo
label values DiffBathing ActYesNo
label values GetHelpBathing YesNo
label values DiffEating ActYesNo
label values GetHelpEating YesNo
label values DiffWithBed ActYesNo
label values UseDevWithBed YesNo
label values GetHelpWithBed YesNo
label values DiffToilet ActYesNo
label values GetHelpToilet YesNo
label values DiffUsingMap ActYesNo
label values DiffCooking ActYesNo
label values NoCookBCHealth YesNo
label values GetHelpCooking YesNo
label values DiffShopping ActYesNo
label values NoShopBCHealth YesNo
label values GetHelpShopping YesNo
label values DiffPhoning ActYesNo
label values NoPhoneBCHealth YesNo
label values GetHelpPhoning YesNo
label values DiffTakingRX ActYesNo
label values NoRXBCHealth YesNo
label values GetHelpTakingRX YesNo
label values GetHelpHousework YesNo
label values DiffMoney ActYesNo
label values NoMoneyBCHealth YesNo
label values GetHelpMoney YesNo
label values IsRetired YesNo
summarize CigsPerDay
local j = ceil(log(r(max))/log(10))
label values CigsPerDay Value`j'
summarize PacksPerDay
local j = ceil(log(r(max))/log(10))
label values PacksPerDay Value`j'
summarize DaysWeekDrink
local j = ceil(log(r(max))/log(10))
label values DaysWeekDrink Value`j'
summarize DrinksPerDay
local j = ceil(log(r(max))/log(10))
label values DrinksPerDay Value`j'

save ../Extracted/MergedCore04.dta, replace
