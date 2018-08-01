clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H06A_R.dct
sort HHID PN
save ../Extracted/H06A_R.dta, replace
clear all
infile using ../RawHRS/H06C_R.dct
sort HHID PN
save ../Extracted/H06C_R.dta, replace
clear all
infile using ../RawHRS/H06G_R.dct
sort HHID PN
save ../Extracted/H06G_R.dta, replace
clear all
infile using ../RawHRS/H06J_R.dct
sort HHID PN
save ../Extracted/H06J_R.dta, replace
clear all
infile using ../RawHRS/H06N_R.dct
sort HHID PN
save ../Extracted/H06N_R.dta, replace
clear all
infile using ../RawHRS/H06PR_R.dct
sort HHID PN
save ../Extracted/H06PR_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H06A_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H06C_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H06G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H06J_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H06N_R.dta, sorted
drop _merge

keep HHID KSUBHH PN KN001 KN004 KN005 KN006 KN007 KN009 KN351 KN014 KN015 KN016 KN018 KN352 KN404 KN405 KN406 KN023 KN025_1 KN032_1 KN033_1 KN034_1 KN035_1 KN036_1 KN037_1 KN039_1 KN040_1 KN041_1 KN042_1 KN049_1A KN049_1B KN049_1C KN052_1 KN055_1 KN056_1 KN032_2 KN033_2 KN034_2 KN035_2 KN036_2 KN037_2 KN039_2 KN040_2 KN041_2 KN042_2 KN049_2A KN049_2B KN049_2C KN052_2 KN055_2 KN056_2 KN090 KN071 KN073 KN238 KN079 KN080 KN081 KN083 KN091 KN342 KN099 KN100 KN101 KN102 KN106 KN107 KN108 KN110 KN114 KN115 KN116 KN117 KN118 KN119 KN120 KN121 KN134 KN135 KN139 KN140 KN141 KN143 KN147 KN148 KN149 KN150 KN151 KN152 KN156 KN157 KN158 KN160 KN164 KN165 KN168 KN169 KN170 KN172 KN175 KN360 KN361 KN362 KN363 KN364 KN365 KN176 KN180 KN181 KN182 KN184 KN189 KN190 KN194 KN195 KN196 KN198 KN202 KN239 KN246 KN247 KN204 KN205 KN206 KN207 KN208 KN209 KN210 KN211 KN212 KN215 KN216 KN217 KN219M1 KC001 KC002 KC005 KC006 KC008 KC010 KC011 KC012 KC015 KC018 KC024 KC030 KC032 KC035 KC036 KC037 KC040 KC042 KC045 KC046 KC047 KC048 KC050 KC053 KC055 KC060 KC062 KC065 KC068 KC069 KC070 KC074 KC075 KC219 KC220 KC221 KC222 KC079 KC080 KC081 KC087 KC088 KC089 KC090 KC091 KC095 KC102 KC103 KC104 KC105 KC106 KC109 KC110 KC112 KC113 KC114 KC223 KC224 KC225 KC143 KC144 KC145 KC146 KC147 KC148 KC149 KC229 KC150 KA019 KA028 KA099 KX060_R KX065_R KX004_R KX067_R KG001 KG002 KG003 KG004 KG005 KG006 KG007 KG008 KG009 KG010 KG011 KG012 KG014 KG015 KG016 KG017 KG020 KG021 KG022 KG023 KG024 KG025 KG026 KG029 KG030 KG031 KG040 KG041 KG042 KG043 KG044 KG045 KG046 KG047 KG048 KG049 KG050 KG052 KG053 KG058 KG059 KG060 KG061 KG208 KG209 KG210 KJ005M1 KJ578 KC118 KC119 KC129 KC130
rename KSUBHH SUBHH
rename KN001 HaveMedicareA
rename KN004 HaveMedicareB
rename KN005 HadMedicaid
rename KN006 HaveMedicaid
rename KN007 HaveChampus
rename KN009 MedicareByHMO
rename KN351 HMOCoverDrugs
rename KN014 HMOPremAmt
rename KN015 HMOPremMin
rename KN016 HMOPremMax
rename KN018 HMOPremPer
rename KN352 HaveMedicareD
rename KN404 PartDPremAmt
rename KN405 PartDPremMin
rename KN406 PartPremMax
rename KN023 NumPrivPlans
rename KN025_1 Plan1Primary
rename KN032_1 Plan1PayRX
rename KN033_1 Plan1CurEmp
rename KN034_1 Plan1ForEmp
rename KN035_1 Plan1CurSpEmp
rename KN036_1 Plan1ForSpEmp
rename KN037_1 Plan1HowPurch
rename KN039_1 Plan1PremPay
rename KN040_1 Plan1PremAmt
rename KN041_1 Plan1PremMin
rename KN042_1 Plan1PremMax
rename KN049_1A Plan1WhoCoverA
rename KN049_1B Plan1WhoCoverB
rename KN049_1C Plan1WhoCoverC
rename KN052_1 Plan1IsHMO
rename KN055_1 Plan1DocNetwork
rename KN056_1 Plan1PayOutNtwk
rename KN032_2 Plan2PayRX
rename KN033_2 Plan2CurEmp
rename KN034_2 Plan2ForEmp
rename KN035_2 Plan2CurSpEmp
rename KN036_2 Plan2ForSpEmp
rename KN037_2 Plan2HowPurch
rename KN039_2 Plan2PremPay
rename KN040_2 Plan2PremAmt
rename KN041_2 Plan2PremMin
rename KN042_2 Plan2PremMax
rename KN049_2A Plan2WhoCoverA
rename KN049_2B Plan2WhoCoverB
rename KN049_2C Plan2WhoCoverC
rename KN052_2 Plan2IsHMO
rename KN055_2 Plan2DocNetwork
rename KN056_2 Plan2PayOutNtwk
rename KN090 TotalInsPlans
rename KN071 HaveLTCIns
rename KN073 WhichPlanLTC
rename KN238 LTCCoverSpouse
rename KN079 LTCPremAmt
rename KN080 LTCPremMin
rename KN081 LTCPremMax
rename KN083 LTCPremPer
rename KN091 EverWithoutIns
rename KN342 NoHealthInsNow
rename KN099 StayInHosp
rename KN100 HospNumStays
rename KN101 HospNumNights
rename KN102 HospCoverByIns
rename KN106 HospOOPAmt
rename KN107 HospOOPMin
rename KN108 HospOOPMax
rename KN110 HospExpectInsCov
rename KN114 StayInLTC
rename KN115 LTCNumStays
rename KN116 LTCNumNights
rename KN117 LTCNumMonths
rename KN118 LTCCoverByIns
rename KN119 LTCOOPAmt
rename KN120 LTCOOPMin
rename KN121 LTCOOPMax
rename KN134 HadOutSurg
rename KN135 OutSurgCoverByIns
rename KN139 OutSurgOOPAmt
rename KN140 OutSurgOOPMin
rename KN141 OutSurgOOPMax
rename KN143 OutSurgExpectInsCov
rename KN147 DocVisNum
rename KN148 DocVisgt20
rename KN149 DocVisgt5
rename KN150 DocVisgt1
rename KN151 DocVisgt50
rename KN152 DocVisCoverByIns
rename KN156 DocVisOOPAmt
rename KN157 DocVisOOPMin
rename KN158 DocVisOOPMax
rename KN160 DocVisExpectInsCov
rename KN164 DentistVisit
rename KN165 DentistCoverByIns
rename KN168 DentistOOPAmt
rename KN169 DentistOOPMin
rename KN170 DentistOOPMax
rename KN172 DentistExpectInsCov
rename KN175 TakeRXDrugs
rename KN360 TakeRX4Chol
rename KN361 TakeRX4MusPain
rename KN362 TakeRX4Breath
rename KN363 TakeRX4Stomach
rename KN364 TakeRX4Sleep
rename KN365 TakeRX4Anxiety
rename KN176 RXCoverByIns
rename KN180 RXOOPAmt
rename KN181 RXOOPMin
rename KN182 RXOOPMax
rename KN184 RXExpectInsCov
rename KN189 HoMedVisit
rename KN190 HoMedCoverByIns
rename KN194 HoMedOOPAmt
rename KN195 HoMedOOPMin
rename KN196 HoMedOOPMax
rename KN198 HoMedExpectInsCov
rename KN202 SpecFacVisit
rename KN239 SpecFacOOPAmt
rename KN246 SpecFacOOPMin
rename KN247 SpecFacOOPMax
rename KN204 HospAssigned
rename KN205 LTCAssigned
rename KN206 OutSurgAssigned
rename KN207 DocVisAssigned
rename KN208 DentistAssigned
rename KN209 RXAssigned
rename KN210 HoMedAssigned
rename KN211 TotalOOPAssigned
rename KN212 RecdHelpWithBills
rename KN215 BillHelpAmt
rename KN216 BillHelpMin
rename KN217 BillHelpMax
rename KN219M1 HowPayLargeBills
rename KC001 HealthStatus
rename KC002 HealthChange
rename KC005 HaveHighBP
rename KC006 TakeRX4HighBP
rename KC008 BPUnderControl
rename KC010 HaveDiabetes
rename KC011 TakeRX4DiabOral
rename KC012 TakeRXInsulin
rename KC015 DiabUnderControl
rename KC018 HaveCancer
rename KC024 HaveNewCancer
rename KC030 HaveLungCond
rename KC032 TakeRX4Lung
rename KC035 LungCondLimitAct
rename KC036 HaveHeartCond
rename KC037 TakeRX4Heart
rename KC040 RecentHeartAtk
rename KC042 TakeRX4HeartAtk
rename KC045 HaveAngina
rename KC046 TakeRX4Angina
rename KC047 AnginaLimitAct
rename KC048 HaveCongHeartFail
rename KC050 TakeRX4HeartFail
rename KC053 HasHadStroke
rename KC055 StrokeProblems
rename KC060 TakeRX4Stroke
rename KC062 RecentStroke
rename KC065 HavePsychProb
rename KC068 TakeRX4Depress
rename KC069 HaveMemProb
rename KC070 HaveArthritis
rename KC074 TakeRX4Arthritis
rename KC075 ArthritisLimitAct
rename KC219 HaveOsteoArth
rename KC220 HaveRheumArth
rename KC221 HaveGoutLupus
rename KC222 HaveInjuryArth
rename KC079 FallenRecently
rename KC080 NumFalls
rename KC081 InjuryFall
rename KC087 LostAnyUrine
rename KC088 LostUrineDaysAmt
rename KC089 LostUrineDaysgt5
rename KC090 LostUrineDaysgt15
rename KC091 LostUrineHowMuch
rename KC095 VisionQuality
rename KC102 UseHearingAid
rename KC103 HearingQuality
rename KC104 HaveFreqPain
rename KC105 PainSeverity
rename KC106 PainLimitAct
rename KC109 HadFluShot
rename KC110 HadCholTest
rename KC112 HadMammo
rename KC113 HadPapSmear
rename KC114 HadProstateEx
rename KC223 HowOftenVigAct
rename KC224 HowOftenModAct
rename KC225 HowOftenMildAct
rename KC143 HaveAnkleSwell
rename KC144 HaveShortBreath
rename KC145 HaveDizziness
rename KC146 HaveBackProb
rename KC147 HaveHeadache
rename KC148 HaveFatigue
rename KC149 HaveCoughing
rename KC229 DaysInBed
rename KC150 Depressed2Weeks
rename KA019 CurrentAge
rename KA028 InNursingHome
rename KA099 NumResChildren
rename KX060_R Sex
rename KX065_R CoupleStatus
rename KX004_R MonthBorn
rename KX067_R YearBorn
rename KG001 DiffWalkBlocks
rename KG002 DiffJogMile
rename KG003 DiffWalk1Block
rename KG004 DiffSitting
rename KG005 DiffStanding
rename KG006 DiffStairs
rename KG007 Diff1Stair
rename KG008 DiffStooping
rename KG009 DiffReaching
rename KG010 DiffPushing
rename KG011 DiffCarrying
rename KG012 DiffPickDime
rename KG014 DiffDressing
rename KG015 GetHelpDress
rename KG016 DiffCrossRoom
rename KG017 UseDevCrossRoom
rename KG020 GetHelpCrossRoom
rename KG021 DiffBathing
rename KG022 GetHelpBathing
rename KG023 DiffEating
rename KG024 GetHelpEating
rename KG025 DiffWithBed
rename KG026 UseDevWithBed
rename KG029 GetHelpWithBed
rename KG030 DiffToilet
rename KG031 GetHelpToilet
rename KG040 DiffUsingMap
rename KG041 DiffCooking
rename KG042 NoCookBCHealth
rename KG043 GetHelpCooking
rename KG044 DiffShopping
rename KG045 NoShopBCHealth
rename KG046 GetHelpShopping
rename KG047 DiffPhoning
rename KG048 NoPhoneBCHealth
rename KG049 GetHelpPhoning
rename KG050 DiffTakingRX
rename KG052 NoRXBCHealth
rename KG053 GetHelpTakingRX
rename KG058 GetHelpHousework
rename KG059 DiffMoney
rename KG060 NoMoneyBCHealth
rename KG061 GetHelpMoney
rename KG208 HandStrength
rename KG209 ShortBreathFreq
rename KG210 DiffBalanceFreq
rename KJ005M1 EmpStatus
rename KJ578 IsRetired
rename KC118 CigsPerDay
rename KC119 PacksPerDay
rename KC129 DaysWeekDrink
rename KC130 DrinksPerDay

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
label variable HaveMedicareD "Have Medicare Part D?"
label variable PartDPremAmt "Part D premiums amount"
label variable PartDPremMin "Part D premiums minimum"
label variable PartPremMax "Part D premiums maximum"
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
label variable TakeRX4Chol "Take drugs for cholesterol?"
label variable TakeRX4MusPain "Take drugs for muscle/joint pain?"
label variable TakeRX4Breath "Take drugs for breathing problems?"
label variable TakeRX4Stomach "Take drugs for stomach problems?"
label variable TakeRX4Sleep "Take drugs for sleep problems?"
label variable TakeRX4Anxiety "Take drugs for anxiety/depression?"
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
label variable HandStrength "Self rating of hand strength"
label variable ShortBreathFreq "How often become short of breath?"
label variable DiffBalanceFreq "How often difficulty with balance?"
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
label values HaveMedicareD YesNo
summarize PartDPremAmt
local j = ceil(log(r(max))/log(10))
label values PartDPremAmt Value`j'
summarize PartDPremMin
local j = ceil(log(r(max))/log(10))
label values PartDPremMin Value`j'
summarize PartPremMax
local j = ceil(log(r(max))/log(10))
label values PartPremMax Value`j'
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
label values TakeRX4Chol YesNo
label values TakeRX4MusPain YesNo
label values TakeRX4Breath YesNo
label values TakeRX4Stomach YesNo
label values TakeRX4Sleep YesNo
label values TakeRX4Anxiety YesNo
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
label values HandStrength Strength
label values ShortBreathFreq HowOftenB
label values DiffBalanceFreq HowOftenB
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

save ../Extracted/MergedCore06.dta, replace
