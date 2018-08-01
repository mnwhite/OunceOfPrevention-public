clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H02A_R.dct
sort HHID PN
save ../Extracted/H02A_R.dta, replace
clear all
infile using ../RawHRS/H02A_H.dct
sort HHID HSUBHH
save ../Extracted/H02A_H.dta, replace
clear all
infile using ../RawHRS/H02C_R.dct
sort HHID PN
save ../Extracted/H02C_R.dta, replace
clear all
infile using ../RawHRS/H02G_R.dct
sort HHID PN
save ../Extracted/H02G_R.dta, replace
clear all
infile using ../RawHRS/H02J_R.dct
sort HHID PN
save ../Extracted/H02J_R.dta, replace
clear all
infile using ../RawHRS/H02N_R.dct
sort HHID PN
save ../Extracted/H02N_R.dta, replace
clear all
infile using ../RawHRS/H02PR_R.dct
sort HHID PN
save ../Extracted/H02PR_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H02A_R.dta, sorted
drop _merge
sort HHID HSUBHH
merge m:1 HHID HSUBHH using ../Extracted/H02A_H.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H02C_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H02G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H02J_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H02N_R.dta, sorted
drop _merge
sort HHID HSUBHH

keep HHID HSUBHH PN HN001 HN004 HN005 HN006 HN007 HN009 HN014 HN015 HN016 HN018 HN023 HN025_1 HN032_1 HN033_1 HN034_1 HN035_1 HN036_1 HN037_1 HN039_1 HN040_1 HN041_1 HN042_1 HN049_1A HN049_1B HN049_1C HN052_1 HN055_1 HN056_1 HN032_2 HN033_2 HN034_2 HN035_2 HN036_2 HN037_2 HN039_2 HN040_2 HN041_2 HN042_2 HN049_2A HN049_2B HN049_2C HN052_2 HN055_2 HN056_2 HN090 HN071 HN073 HN238 HN079 HN080 HN081 HN083 HN091 HN099 HN100 HN101 HN102 HN106 HN107 HN108 HN110 HN114 HN115 HN116 HN117 HN118 HN119 HN120 HN121 HN134 HN135 HN139 HN140 HN141 HN143 HN147 HN148 HN149 HN150 HN151 HN152 HN156 HN157 HN158 HN160 HN164 HN165 HN168 HN169 HN170 HN172 HN175 HN176 HN180 HN181 HN182 HN184 HN189 HN190 HN194 HN195 HN196 HN198 HN202 HN239 HN246 HN247 HN204 HN205 HN206 HN207 HN208 HN209 HN210 HN211 HN212 HN215 HN216 HN217 HN219M1 HC001 HC002 HC005 HC006 HC008 HC010 HC011 HC012 HC015 HC018 HC024 HC030 HC032 HC035 HC036 HC037 HC040 HC042 HC045 HC046 HC047 HC048 HC050 HC053 HC055 HC060 HC062 HC065 HC068 HC069 HC070 HC074 HC075 HC079 HC080 HC081 HC087 HC088 HC089 HC090 HC091 HC095 HC102 HC103 HC104 HC105 HC106 HC109 HC110 HC112 HC113 HC114 HC143 HC144 HC145 HC146 HC147 HC148 HC149 HC150 HA019 HA028 HA099 HX060_R HX065_R HX004_R HX067_R HG001 HG002 HG003 HG004 HG005 HG006 HG007 HG008 HG009 HG010 HG011 HG012 HG014 HG015 HG016 HG017 HG020 HG021 HG022 HG023 HG024 HG025 HG026 HG029 HG030 HG031 HG040 HG041 HG042 HG043 HG044 HG045 HG046 HG047 HG048 HG049 HG050 HG052 HG053 HG058 HG059 HG060 HG061 HJ005M1 HJ578 HC115 HC118 HC119 HC129 HC130
rename HSUBHH SUBHH
rename HN001 HaveMedicareA
rename HN004 HaveMedicareB
rename HN005 HadMedicaid
rename HN006 HaveMedicaid
rename HN007 HaveChampus
rename HN009 MedicareByHMO
rename HN014 HMOPremAmt
rename HN015 HMOPremMin
rename HN016 HMOPremMax
rename HN018 HMOPremPer
rename HN023 NumPrivPlans
rename HN025_1 Plan1Primary
rename HN032_1 Plan1PayRX
rename HN033_1 Plan1CurEmp
rename HN034_1 Plan1ForEmp
rename HN035_1 Plan1CurSpEmp
rename HN036_1 Plan1ForSpEmp
rename HN037_1 Plan1HowPurch
rename HN039_1 Plan1PremPay
rename HN040_1 Plan1PremAmt
rename HN041_1 Plan1PremMin
rename HN042_1 Plan1PremMax
rename HN049_1A Plan1WhoCoverA
rename HN049_1B Plan1WhoCoverB
rename HN049_1C Plan1WhoCoverC
rename HN052_1 Plan1IsHMO
rename HN055_1 Plan1DocNetwork
rename HN056_1 Plan1PayOutNtwk
rename HN032_2 Plan2PayRX
rename HN033_2 Plan2CurEmp
rename HN034_2 Plan2ForEmp
rename HN035_2 Plan2CurSpEmp
rename HN036_2 Plan2ForSpEmp
rename HN037_2 Plan2HowPurch
rename HN039_2 Plan2PremPay
rename HN040_2 Plan2PremAmt
rename HN041_2 Plan2PremMin
rename HN042_2 Plan2PremMax
rename HN049_2A Plan2WhoCoverA
rename HN049_2B Plan2WhoCoverB
rename HN049_2C Plan2WhoCoverC
rename HN052_2 Plan2IsHMO
rename HN055_2 Plan2DocNetwork
rename HN056_2 Plan2PayOutNtwk
rename HN090 TotalInsPlans
rename HN071 HaveLTCIns
rename HN073 WhichPlanLTC
rename HN238 LTCCoverSpouse
rename HN079 LTCPremAmt
rename HN080 LTCPremMin
rename HN081 LTCPremMax
rename HN083 LTCPremPer
rename HN091 EverWithoutIns
rename HN099 StayInHosp
rename HN100 HospNumStays
rename HN101 HospNumNights
rename HN102 HospCoverByIns
rename HN106 HospOOPAmt
rename HN107 HospOOPMin
rename HN108 HospOOPMax
rename HN110 HospExpectInsCov
rename HN114 StayInLTC
rename HN115 LTCNumStays
rename HN116 LTCNumNights
rename HN117 LTCNumMonths
rename HN118 LTCCoverByIns
rename HN119 LTCOOPAmt
rename HN120 LTCOOPMin
rename HN121 LTCOOPMax
rename HN134 HadOutSurg
rename HN135 OutSurgCoverByIns
rename HN139 OutSurgOOPAmt
rename HN140 OutSurgOOPMin
rename HN141 OutSurgOOPMax
rename HN143 OutSurgExpectInsCov
rename HN147 DocVisNum
rename HN148 DocVisgt20
rename HN149 DocVisgt5
rename HN150 DocVisgt1
rename HN151 DocVisgt50
rename HN152 DocVisCoverByIns
rename HN156 DocVisOOPAmt
rename HN157 DocVisOOPMin
rename HN158 DocVisOOPMax
rename HN160 DocVisExpectInsCov
rename HN164 DentistVisit
rename HN165 DentistCoverByIns
rename HN168 DentistOOPAmt
rename HN169 DentistOOPMin
rename HN170 DentistOOPMax
rename HN172 DentistExpectInsCov
rename HN175 TakeRXDrugs
rename HN176 RXCoverByIns
rename HN180 RXOOPAmt
rename HN181 RXOOPMin
rename HN182 RXOOPMax
rename HN184 RXExpectInsCov
rename HN189 HoMedVisit
rename HN190 HoMedCoverByIns
rename HN194 HoMedOOPAmt
rename HN195 HoMedOOPMin
rename HN196 HoMedOOPMax
rename HN198 HoMedExpectInsCov
rename HN202 SpecFacVisit
rename HN239 SpecFacOOPAmt
rename HN246 SpecFacOOPMin
rename HN247 SpecFacOOPMax
rename HN204 HospAssigned
rename HN205 LTCAssigned
rename HN206 OutSurgAssigned
rename HN207 DocVisAssigned
rename HN208 DentistAssigned
rename HN209 RXAssigned
rename HN210 HoMedAssigned
rename HN211 TotalOOPAssigned
rename HN212 RecdHelpWithBills
rename HN215 BillHelpAmt
rename HN216 BillHelpMin
rename HN217 BillHelpMax
rename HN219M1 HowPayLargeBills
rename HC001 HealthStatus
rename HC002 HealthChange
rename HC005 HaveHighBP
rename HC006 TakeRX4HighBP
rename HC008 BPUnderControl
rename HC010 HaveDiabetes
rename HC011 TakeRX4DiabOral
rename HC012 TakeRXInsulin
rename HC015 DiabUnderControl
rename HC018 HaveCancer
rename HC024 HaveNewCancer
rename HC030 HaveLungCond
rename HC032 TakeRX4Lung
rename HC035 LungCondLimitAct
rename HC036 HaveHeartCond
rename HC037 TakeRX4Heart
rename HC040 RecentHeartAtk
rename HC042 TakeRX4HeartAtk
rename HC045 HaveAngina
rename HC046 TakeRX4Angina
rename HC047 AnginaLimitAct
rename HC048 HaveCongHeartFail
rename HC050 TakeRX4HeartFail
rename HC053 HasHadStroke
rename HC055 StrokeProblems
rename HC060 TakeRX4Stroke
rename HC062 RecentStroke
rename HC065 HavePsychProb
rename HC068 TakeRX4Depress
rename HC069 HaveMemProb
rename HC070 HaveArthritis
rename HC074 TakeRX4Arthritis
rename HC075 ArthritisLimitAct
rename HC079 FallenRecently
rename HC080 NumFalls
rename HC081 InjuryFall
rename HC087 LostAnyUrine
rename HC088 LostUrineDaysAmt
rename HC089 LostUrineDaysgt5
rename HC090 LostUrineDaysgt15
rename HC091 LostUrineHowMuch
rename HC095 VisionQuality
rename HC102 UseHearingAid
rename HC103 HearingQuality
rename HC104 HaveFreqPain
rename HC105 PainSeverity
rename HC106 PainLimitAct
rename HC109 HadFluShot
rename HC110 HadCholTest
rename HC112 HadMammo
rename HC113 HadPapSmear
rename HC114 HadProstateEx
rename HC143 HaveAnkleSwell
rename HC144 HaveShortBreath
rename HC145 HaveDizziness
rename HC146 HaveBackProb
rename HC147 HaveHeadache
rename HC148 HaveFatigue
rename HC149 HaveCoughing
rename HC150 Depressed2Weeks
rename HA019 CurrentAge
rename HA028 InNursingHome
rename HA099 NumResChildren
rename HX060_R Sex
rename HX065_R CoupleStatus
rename HX004_R MonthBorn
rename HX067_R YearBorn
rename HG001 DiffWalkBlocks
rename HG002 DiffJogMile
rename HG003 DiffWalk1Block
rename HG004 DiffSitting
rename HG005 DiffStanding
rename HG006 DiffStairs
rename HG007 Diff1Stair
rename HG008 DiffStooping
rename HG009 DiffReaching
rename HG010 DiffPushing
rename HG011 DiffCarrying
rename HG012 DiffPickDime
rename HG014 DiffDressing
rename HG015 GetHelpDress
rename HG016 DiffCrossRoom
rename HG017 UseDevCrossRoom
rename HG020 GetHelpCrossRoom
rename HG021 DiffBathing
rename HG022 GetHelpBathing
rename HG023 DiffEating
rename HG024 GetHelpEating
rename HG025 DiffWithBed
rename HG026 UseDevWithBed
rename HG029 GetHelpWithBed
rename HG030 DiffToilet
rename HG031 GetHelpToilet
rename HG040 DiffUsingMap
rename HG041 DiffCooking
rename HG042 NoCookBCHealth
rename HG043 GetHelpCooking
rename HG044 DiffShopping
rename HG045 NoShopBCHealth
rename HG046 GetHelpShopping
rename HG047 DiffPhoning
rename HG048 NoPhoneBCHealth
rename HG049 GetHelpPhoning
rename HG050 DiffTakingRX
rename HG052 NoRXBCHealth
rename HG053 GetHelpTakingRX
rename HG058 GetHelpHousework
rename HG059 DiffMoney
rename HG060 NoMoneyBCHealth
rename HG061 GetHelpMoney
rename HJ005M1 EmpStatus
rename HJ578 IsRetired
rename HC115 DoesExercise
rename HC118 CigsPerDay
rename HC119 PacksPerDay
rename HC129 DaysWeekDrink
rename HC130 DrinksPerDay

do DefineLabels.do
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
label variable HaveAnkleSwell "Have persistent ankle swelling?"
label variable HaveShortBreath "Have shortness of breath?"
label variable HaveDizziness "Have persistent dizziness?"
label variable HaveBackProb "Have back problems?"
label variable HaveHeadache "Have persistent headaches?"
label variable HaveFatigue "Have severe fatigue?"
label variable HaveCoughing "Have persistent coughing?"
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
label variable DoesExercise "Participate in vigorous exercise?"
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
label values HaveAnkleSwell YesNo
label values HaveShortBreath YesNo
label values HaveDizziness YesNo
label values HaveBackProb YesNo
label values HaveHeadache YesNo
label values HaveFatigue YesNo
label values HaveCoughing YesNo
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
label values DoesExercise YesNo
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

save ../Extracted/MergedCore02.dta, replace
