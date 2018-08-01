clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H10A_R.dct
sort HHID PN
save ../Extracted/H10A_R.dta, replace
clear all
infile using ../RawHRS/H10C_R.dct
sort HHID PN
save ../Extracted/H10C_R.dta, replace
clear all
infile using ../RawHRS/H10G_R.dct
sort HHID PN
save ../Extracted/H10G_R.dta, replace
clear all
infile using ../RawHRS/H10J_R.dct
sort HHID PN
save ../Extracted/H10J_R.dta, replace
clear all
infile using ../RawHRS/H10N_R.dct
sort HHID PN
save ../Extracted/H10N_R.dta, replace
clear all
infile using ../RawHRS/H10PR_R.dct
sort HHID PN
save ../Extracted/H10PR_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H10A_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H10C_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H10G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H10J_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H10N_R.dta, sorted
drop _merge

keep HHID MSUBHH PN MN001 MN004 MN005 MN006 MN007 MN009 MN351 MN014 MN015 MN016 MN018 MN352 MN417 MN423 MN424 MN404 MN405 MN406 MN427 MN023 MN025_1 MN032_1 MN033_1 MN034_1 MN035_1 MN036_1 MN037_1 MN039_1 MN040_1 MN041_1 MN042_1 MN049_1A MN049_1B MN049_1C MN052_1 MN055_1 MN056_1 MN032_2 MN033_2 MN034_2 MN035_2 MN036_2 MN037_2 MN039_2 MN040_2 MN041_2 MN042_2 MN049_2A MN049_2B MN049_2C MN052_2 MN055_2 MN056_2 MN090 MN071 MN073 MN238 MN079 MN080 MN081 MN083 MN091 MN342 MN099 MN100 MN101 MN102 MN106 MN107 MN108 MN110 MN114 MN115 MN116 MN117 MN118 MN119 MN120 MN121 MN134 MN135 MN139 MN140 MN141 MN143 MN147 MN148 MN149 MN150 MN151 MN152 MN156 MN157 MN158 MN160 MN164 MN165 MN168 MN169 MN170 MN175 MN360 MN361 MN362 MN363 MN364 MN365 MN176 MN180 MN181 MN182 MN184 MN189 MN190 MN194 MN195 MN196 MN198 MN202 MN239 MN246 MN247 MN204 MN205 MN206 MN207 MN208 MN209 MN210 MN211 MN212 MN215 MN216 MN217 MN219M1 MC001 MC002 MC005 MC006 MC008 MC010 MC011 MC012 MC015 MC018 MC024 MC030 MC032 MC035 MC036 MC037 MC040 MC042 MC045 MC046 MC047 MC048 MC050 MC053 MC055 MC060 MC062 MC065 MC068 MC210 MC070 MC074 MC075 MC219 MC220 MC221 MC222 MC240 MC241 MC245 MC079 MC080 MC081 MC087 MC088 MC089 MC090 MC091 MC095 MC102 MC103 MC104 MC105 MC106 MC109 MC110 MC112 MC113 MC114 MC223 MC224 MC225 MC143 MC144 MC145 MC146 MC147 MC148 MC149 MC229 MC150 MA019 MA028 MA099 MX060_R MX065_R MX004_R MX067_R MG001 MG002 MG003 MG004 MG005 MG006 MG007 MG008 MG009 MG010 MG011 MG012 MG014 MG015 MG016 MG017 MG020 MG021 MG022 MG023 MG024 MG025 MG026 MG029 MG030 MG031 MG040 MG041 MG042 MG043 MG044 MG045 MG046 MG047 MG048 MG049 MG050 MG052 MG053 MG058 MG059 MG060 MG061 MG208 MG209 MG210 MJ005M1 MJ578 MC118 MC119 MC129 MC130
rename MSUBHH SUBHH
rename MN001 HaveMedicareA
rename MN004 HaveMedicareB
rename MN005 HadMedicaid
rename MN006 HaveMedicaid
rename MN007 HaveChampus
rename MN009 MedicareByHMO
rename MN351 HMOCoverDrugs
rename MN014 HMOPremAmt
rename MN015 HMOPremMin
rename MN016 HMOPremMax
rename MN018 HMOPremPer
rename MN352 HaveMedicareD
rename MN417 HaveDrugCover
rename MN423 HowPartDPaid
rename MN424 PartDSSDeduct
rename MN404 PartDPremAmt
rename MN405 PartDPremMin
rename MN406 PartPremMax
rename MN427 PartDExtraHelp
rename MN023 NumPrivPlans
rename MN025_1 Plan1Primary
rename MN032_1 Plan1PayRX
rename MN033_1 Plan1CurEmp
rename MN034_1 Plan1ForEmp
rename MN035_1 Plan1CurSpEmp
rename MN036_1 Plan1ForSpEmp
rename MN037_1 Plan1HowPurch
rename MN039_1 Plan1PremPay
rename MN040_1 Plan1PremAmt
rename MN041_1 Plan1PremMin
rename MN042_1 Plan1PremMax
rename MN049_1A Plan1WhoCoverA
rename MN049_1B Plan1WhoCoverB
rename MN049_1C Plan1WhoCoverC
rename MN052_1 Plan1IsHMO
rename MN055_1 Plan1DocNetwork
rename MN056_1 Plan1PayOutNtwk
rename MN032_2 Plan2PayRX
rename MN033_2 Plan2CurEmp
rename MN034_2 Plan2ForEmp
rename MN035_2 Plan2CurSpEmp
rename MN036_2 Plan2ForSpEmp
rename MN037_2 Plan2HowPurch
rename MN039_2 Plan2PremPay
rename MN040_2 Plan2PremAmt
rename MN041_2 Plan2PremMin
rename MN042_2 Plan2PremMax
rename MN049_2A Plan2WhoCoverA
rename MN049_2B Plan2WhoCoverB
rename MN049_2C Plan2WhoCoverC
rename MN052_2 Plan2IsHMO
rename MN055_2 Plan2DocNetwork
rename MN056_2 Plan2PayOutNtwk
rename MN090 TotalInsPlans
rename MN071 HaveLTCIns
rename MN073 WhichPlanLTC
rename MN238 LTCCoverSpouse
rename MN079 LTCPremAmt
rename MN080 LTCPremMin
rename MN081 LTCPremMax
rename MN083 LTCPremPer
rename MN091 EverWithoutIns
rename MN342 NoHealthInsNow
rename MN099 StayInHosp
rename MN100 HospNumStays
rename MN101 HospNumNights
rename MN102 HospCoverByIns
rename MN106 HospOOPAmt
rename MN107 HospOOPMin
rename MN108 HospOOPMax
rename MN110 HospExpectInsCov
rename MN114 StayInLTC
rename MN115 LTCNumStays
rename MN116 LTCNumNights
rename MN117 LTCNumMonths
rename MN118 LTCCoverByIns
rename MN119 LTCOOPAmt
rename MN120 LTCOOPMin
rename MN121 LTCOOPMax
rename MN134 HadOutSurg
rename MN135 OutSurgCoverByIns
rename MN139 OutSurgOOPAmt
rename MN140 OutSurgOOPMin
rename MN141 OutSurgOOPMax
rename MN143 OutSurgExpectInsCov
rename MN147 DocVisNum
rename MN148 DocVisgt20
rename MN149 DocVisgt5
rename MN150 DocVisgt1
rename MN151 DocVisgt50
rename MN152 DocVisCoverByIns
rename MN156 DocVisOOPAmt
rename MN157 DocVisOOPMin
rename MN158 DocVisOOPMax
rename MN160 DocVisExpectInsCov
rename MN164 DentistVisit
rename MN165 DentistCoverByIns
rename MN168 DentistOOPAmt
rename MN169 DentistOOPMin
rename MN170 DentistOOPMax
rename MN175 TakeRXDrugs
rename MN360 TakeRX4Chol
rename MN361 TakeRX4MusPain
rename MN362 TakeRX4Breath
rename MN363 TakeRX4Stomach
rename MN364 TakeRX4Sleep
rename MN365 TakeRX4Anxiety
rename MN176 RXCoverByIns
rename MN180 RXOOPAmt
rename MN181 RXOOPMin
rename MN182 RXOOPMax
rename MN184 RXExpectInsCov
rename MN189 HoMedVisit
rename MN190 HoMedCoverByIns
rename MN194 HoMedOOPAmt
rename MN195 HoMedOOPMin
rename MN196 HoMedOOPMax
rename MN198 HoMedExpectInsCov
rename MN202 SpecFacVisit
rename MN239 SpecFacOOPAmt
rename MN246 SpecFacOOPMin
rename MN247 SpecFacOOPMax
rename MN204 HospAssigned
rename MN205 LTCAssigned
rename MN206 OutSurgAssigned
rename MN207 DocVisAssigned
rename MN208 DentistAssigned
rename MN209 RXAssigned
rename MN210 HoMedAssigned
rename MN211 TotalOOPAssigned
rename MN212 RecdHelpWithBills
rename MN215 BillHelpAmt
rename MN216 BillHelpMin
rename MN217 BillHelpMax
rename MN219M1 HowPayLargeBills
rename MC001 HealthStatus
rename MC002 HealthChange
rename MC005 HaveHighBP
rename MC006 TakeRX4HighBP
rename MC008 BPUnderControl
rename MC010 HaveDiabetes
rename MC011 TakeRX4DiabOral
rename MC012 TakeRXInsulin
rename MC015 DiabUnderControl
rename MC018 HaveCancer
rename MC024 HaveNewCancer
rename MC030 HaveLungCond
rename MC032 TakeRX4Lung
rename MC035 LungCondLimitAct
rename MC036 HaveHeartCond
rename MC037 TakeRX4Heart
rename MC040 RecentHeartAtk
rename MC042 TakeRX4HeartAtk
rename MC045 HaveAngina
rename MC046 TakeRX4Angina
rename MC047 AnginaLimitAct
rename MC048 HaveCongHeartFail
rename MC050 TakeRX4HeartFail
rename MC053 HasHadStroke
rename MC055 StrokeProblems
rename MC060 TakeRX4Stroke
rename MC062 RecentStroke
rename MC065 HavePsychProb
rename MC068 TakeRX4Depress
rename MC210 TakeRX4MemProb
rename MC070 HaveArthritis
rename MC074 TakeRX4Arthritis
rename MC075 ArthritisLimitAct
rename MC219 HaveOsteoArth
rename MC220 HaveRheumArth
rename MC221 HaveGoutLupus
rename MC222 HaveInjuryArth
rename MC240 HaveShingles
rename MC241 ShinglesBouts
rename MC245 ShinglesMaxPain
rename MC079 FallenRecently
rename MC080 NumFalls
rename MC081 InjuryFall
rename MC087 LostAnyUrine
rename MC088 LostUrineDaysAmt
rename MC089 LostUrineDaysgt5
rename MC090 LostUrineDaysgt15
rename MC091 LostUrineHowMuch
rename MC095 VisionQuality
rename MC102 UseHearingAid
rename MC103 HearingQuality
rename MC104 HaveFreqPain
rename MC105 PainSeverity
rename MC106 PainLimitAct
rename MC109 HadFluShot
rename MC110 HadCholTest
rename MC112 HadMammo
rename MC113 HadPapSmear
rename MC114 HadProstateEx
rename MC223 HowOftenVigAct
rename MC224 HowOftenModAct
rename MC225 HowOftenMildAct
rename MC143 HaveAnkleSwell
rename MC144 HaveShortBreath
rename MC145 HaveDizziness
rename MC146 HaveBackProb
rename MC147 HaveHeadache
rename MC148 HaveFatigue
rename MC149 HaveCoughing
rename MC229 DaysInBed
rename MC150 Depressed2Weeks
rename MA019 CurrentAge
rename MA028 InNursingHome
rename MA099 NumResChildren
rename MX060_R Sex
rename MX065_R CoupleStatus
rename MX004_R MonthBorn
rename MX067_R YearBorn
rename MG001 DiffWalkBlocks
rename MG002 DiffJogMile
rename MG003 DiffWalk1Block
rename MG004 DiffSitting
rename MG005 DiffStanding
rename MG006 DiffStairs
rename MG007 Diff1Stair
rename MG008 DiffStooping
rename MG009 DiffReaching
rename MG010 DiffPushing
rename MG011 DiffCarrying
rename MG012 DiffPickDime
rename MG014 DiffDressing
rename MG015 GetHelpDress
rename MG016 DiffCrossRoom
rename MG017 UseDevCrossRoom
rename MG020 GetHelpCrossRoom
rename MG021 DiffBathing
rename MG022 GetHelpBathing
rename MG023 DiffEating
rename MG024 GetHelpEating
rename MG025 DiffWithBed
rename MG026 UseDevWithBed
rename MG029 GetHelpWithBed
rename MG030 DiffToilet
rename MG031 GetHelpToilet
rename MG040 DiffUsingMap
rename MG041 DiffCooking
rename MG042 NoCookBCHealth
rename MG043 GetHelpCooking
rename MG044 DiffShopping
rename MG045 NoShopBCHealth
rename MG046 GetHelpShopping
rename MG047 DiffPhoning
rename MG048 NoPhoneBCHealth
rename MG049 GetHelpPhoning
rename MG050 DiffTakingRX
rename MG052 NoRXBCHealth
rename MG053 GetHelpTakingRX
rename MG058 GetHelpHousework
rename MG059 DiffMoney
rename MG060 NoMoneyBCHealth
rename MG061 GetHelpMoney
rename MG208 HandStrength
rename MG209 ShortBreathFreq
rename MG210 DiffBalanceFreq
rename MJ005M1 EmpStatus
rename MJ578 IsRetired
rename MC118 CigsPerDay
rename MC119 PacksPerDay
rename MC129 DaysWeekDrink
rename MC130 DrinksPerDay

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
label variable HaveDrugCover "Have other prescription coverage? "
label variable HowPartDPaid "How is Part D paid for?"
label variable PartDSSDeduct "Soc Sec deduction for Part D"
label variable PartDPremAmt "Part D premiums amount"
label variable PartDPremMin "Part D premiums minimum"
label variable PartPremMax "Part D premiums maximum"
label variable PartDExtraHelp "Received drug coverage extra help?"
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
label variable TakeRX4MemProb "Taking medication for memory?"
label variable HaveArthritis "Have arthritis?"
label variable TakeRX4Arthritis "Taking medication for arthritis?"
label variable ArthritisLimitAct "Does arthritis limit activities?"
label variable HaveOsteoArth "Have osteoarthritis?"
label variable HaveRheumArth "Have rheumatoid arthritis?"
label variable HaveGoutLupus "Have gout or lupus?"
label variable HaveInjuryArth "Have arthritis related to injury?"
label variable HaveShingles "Have shingles?"
label variable ShinglesBouts "Number of bouts with shingles"
label variable ShinglesMaxPain "Worst pain rating of shingles"
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
label values HaveDrugCover YesNo
label values HowPartDPaid PartDPay
summarize PartDSSDeduct
local j = ceil(log(r(max))/log(10))
label values PartDSSDeduct Value`j'
summarize PartDPremAmt
local j = ceil(log(r(max))/log(10))
label values PartDPremAmt Value`j'
summarize PartDPremMin
local j = ceil(log(r(max))/log(10))
label values PartDPremMin Value`j'
summarize PartPremMax
local j = ceil(log(r(max))/log(10))
label values PartPremMax Value`j'
label values PartDExtraHelp YesNo
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
label values DocVisNum YesNo
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
label values TakeRX4MemProb YesNo
label values HaveArthritis DispYesNo
label values TakeRX4Arthritis YesNo
label values ArthritisLimitAct YesNo
label values HaveOsteoArth DispYesNo
label values HaveRheumArth DispYesNo
label values HaveGoutLupus DispYesNo
label values HaveInjuryArth DispYesNo
label values HaveShingles DispYesNo
summarize ShinglesBouts
local j = ceil(log(r(max))/log(10))
label values ShinglesBouts Value`j'
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

save ../Extracted/MergedCore10.dta, replace
