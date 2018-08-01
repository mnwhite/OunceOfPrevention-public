clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H08A_R.dct
sort HHID PN
save ../Extracted/H08A_R.dta, replace
clear all
infile using ../RawHRS/H08C_R.dct
sort HHID PN
save ../Extracted/H08C_R.dta, replace
clear all
infile using ../RawHRS/H08G_R.dct
sort HHID PN
save ../Extracted/H08G_R.dta, replace
clear all
infile using ../RawHRS/H08J_R.dct
sort HHID PN
save ../Extracted/H08J_R.dta, replace
clear all
infile using ../RawHRS/H08N_R.dct
sort HHID PN
save ../Extracted/H08N_R.dta, replace
clear all
infile using ../RawHRS/H08PR_R.dct
sort HHID PN
save ../Extracted/H08PR_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H08A_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H08C_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H08G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H08J_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H08N_R.dta, sorted
drop _merge

keep HHID LSUBHH PN LN001 LN004 LN005 LN006 LN007 LN009 LN351 LN014 LN015 LN016 LN018 LN352 LN417 LN423 LN424 LN404 LN405 LN406 LN427 LN023 LN025_1 LN032_1 LN033_1 LN034_1 LN035_1 LN036_1 LN037_1 LN039_1 LN040_1 LN041_1 LN042_1 LN049_1A LN049_1B LN049_1C LN052_1 LN055_1 LN056_1 LN032_2 LN033_2 LN034_2 LN035_2 LN036_2 LN037_2 LN039_2 LN040_2 LN041_2 LN042_2 LN049_2A LN049_2B LN049_2C LN052_2 LN055_2 LN056_2 LN090 LN071 LN073 LN238 LN079 LN080 LN081 LN083 LN091 LN342 LN099 LN100 LN101 LN102 LN106 LN107 LN108 LN110 LN114 LN115 LN116 LN117 LN118 LN119 LN120 LN121 LN134 LN135 LN139 LN140 LN141 LN143 LN147 LN148 LN149 LN150 LN151 LN152 LN156 LN157 LN158 LN160 LN164 LN165 LN168 LN169 LN170 LN172 LN175 LN360 LN361 LN362 LN363 LN364 LN365 LN176 LN180 LN181 LN182 LN184 LN189 LN190 LN194 LN195 LN196 LN198 LN202 LN239 LN246 LN247 LN204 LN205 LN206 LN207 LN208 LN209 LN210 LN211 LN212 LN215 LN216 LN217 LN219M1 LC001 LC002 LC005 LC006 LC008 LC010 LC011 LC012 LC015 LC018 LC024 LC030 LC032 LC035 LC036 LC037 LC040 LC042 LC045 LC046 LC047 LC048 LC050 LC053 LC055 LC060 LC062 LC065 LC068 LC069 LC210 LC070 LC074 LC075 LC219 LC220 LC221 LC222 LC240 LC241 LC245 LC079 LC080 LC081 LC087 LC088 LC089 LC090 LC091 LC095 LC102 LC103 LC104 LC105 LC106 LC109 LC110 LC112 LC113 LC114 LC223 LC224 LC225 LC143 LC144 LC145 LC146 LC147 LC148 LC149 LC229 LC150 LA019 LA028 LA099 LX060_R LX065_R LX004_R LX067_R LG001 LG002 LG003 LG004 LG005 LG006 LG007 LG008 LG009 LG010 LG011 LG012 LG014 LG015 LG016 LG017 LG020 LG021 LG022 LG023 LG024 LG025 LG026 LG029 LG030 LG031 LG040 LG041 LG042 LG043 LG044 LG045 LG046 LG047 LG048 LG049 LG050 LG052 LG053 LG058 LG059 LG060 LG061 LG208 LG209 LG210 LJ005M1 LJ578 LC118 LC119 LC129 LC130
rename LSUBHH SUBHH
rename LN001 HaveMedicareA
rename LN004 HaveMedicareB
rename LN005 HadMedicaid
rename LN006 HaveMedicaid
rename LN007 HaveChampus
rename LN009 MedicareByHMO
rename LN351 HMOCoverDrugs
rename LN014 HMOPremAmt
rename LN015 HMOPremMin
rename LN016 HMOPremMax
rename LN018 HMOPremPer
rename LN352 HaveMedicareD
rename LN417 HaveDrugCover
rename LN423 HowPartDPaid
rename LN424 PartDSSDeduct
rename LN404 PartDPremAmt
rename LN405 PartDPremMin
rename LN406 PartPremMax
rename LN427 PartDExtraHelp
rename LN023 NumPrivPlans
rename LN025_1 Plan1Primary
rename LN032_1 Plan1PayRX
rename LN033_1 Plan1CurEmp
rename LN034_1 Plan1ForEmp
rename LN035_1 Plan1CurSpEmp
rename LN036_1 Plan1ForSpEmp
rename LN037_1 Plan1HowPurch
rename LN039_1 Plan1PremPay
rename LN040_1 Plan1PremAmt
rename LN041_1 Plan1PremMin
rename LN042_1 Plan1PremMax
rename LN049_1A Plan1WhoCoverA
rename LN049_1B Plan1WhoCoverB
rename LN049_1C Plan1WhoCoverC
rename LN052_1 Plan1IsHMO
rename LN055_1 Plan1DocNetwork
rename LN056_1 Plan1PayOutNtwk
rename LN032_2 Plan2PayRX
rename LN033_2 Plan2CurEmp
rename LN034_2 Plan2ForEmp
rename LN035_2 Plan2CurSpEmp
rename LN036_2 Plan2ForSpEmp
rename LN037_2 Plan2HowPurch
rename LN039_2 Plan2PremPay
rename LN040_2 Plan2PremAmt
rename LN041_2 Plan2PremMin
rename LN042_2 Plan2PremMax
rename LN049_2A Plan2WhoCoverA
rename LN049_2B Plan2WhoCoverB
rename LN049_2C Plan2WhoCoverC
rename LN052_2 Plan2IsHMO
rename LN055_2 Plan2DocNetwork
rename LN056_2 Plan2PayOutNtwk
rename LN090 TotalInsPlans
rename LN071 HaveLTCIns
rename LN073 WhichPlanLTC
rename LN238 LTCCoverSpouse
rename LN079 LTCPremAmt
rename LN080 LTCPremMin
rename LN081 LTCPremMax
rename LN083 LTCPremPer
rename LN091 EverWithoutIns
rename LN342 NoHealthInsNow
rename LN099 StayInHosp
rename LN100 HospNumStays
rename LN101 HospNumNights
rename LN102 HospCoverByIns
rename LN106 HospOOPAmt
rename LN107 HospOOPMin
rename LN108 HospOOPMax
rename LN110 HospExpectInsCov
rename LN114 StayInLTC
rename LN115 LTCNumStays
rename LN116 LTCNumNights
rename LN117 LTCNumMonths
rename LN118 LTCCoverByIns
rename LN119 LTCOOPAmt
rename LN120 LTCOOPMin
rename LN121 LTCOOPMax
rename LN134 HadOutSurg
rename LN135 OutSurgCoverByIns
rename LN139 OutSurgOOPAmt
rename LN140 OutSurgOOPMin
rename LN141 OutSurgOOPMax
rename LN143 OutSurgExpectInsCov
rename LN147 DocVisNum
rename LN148 DocVisgt20
rename LN149 DocVisgt5
rename LN150 DocVisgt1
rename LN151 DocVisgt50
rename LN152 DocVisCoverByIns
rename LN156 DocVisOOPAmt
rename LN157 DocVisOOPMin
rename LN158 DocVisOOPMax
rename LN160 DocVisExpectInsCov
rename LN164 DentistVisit
rename LN165 DentistCoverByIns
rename LN168 DentistOOPAmt
rename LN169 DentistOOPMin
rename LN170 DentistOOPMax
rename LN172 DentistExpectInsCov
rename LN175 TakeRXDrugs
rename LN360 TakeRX4Chol
rename LN361 TakeRX4MusPain
rename LN362 TakeRX4Breath
rename LN363 TakeRX4Stomach
rename LN364 TakeRX4Sleep
rename LN365 TakeRX4Anxiety
rename LN176 RXCoverByIns
rename LN180 RXOOPAmt
rename LN181 RXOOPMin
rename LN182 RXOOPMax
rename LN184 RXExpectInsCov
rename LN189 HoMedVisit
rename LN190 HoMedCoverByIns
rename LN194 HoMedOOPAmt
rename LN195 HoMedOOPMin
rename LN196 HoMedOOPMax
rename LN198 HoMedExpectInsCov
rename LN202 SpecFacVisit
rename LN239 SpecFacOOPAmt
rename LN246 SpecFacOOPMin
rename LN247 SpecFacOOPMax
rename LN204 HospAssigned
rename LN205 LTCAssigned
rename LN206 OutSurgAssigned
rename LN207 DocVisAssigned
rename LN208 DentistAssigned
rename LN209 RXAssigned
rename LN210 HoMedAssigned
rename LN211 TotalOOPAssigned
rename LN212 RecdHelpWithBills
rename LN215 BillHelpAmt
rename LN216 BillHelpMin
rename LN217 BillHelpMax
rename LN219M1 HowPayLargeBills
rename LC001 HealthStatus
rename LC002 HealthChange
rename LC005 HaveHighBP
rename LC006 TakeRX4HighBP
rename LC008 BPUnderControl
rename LC010 HaveDiabetes
rename LC011 TakeRX4DiabOral
rename LC012 TakeRXInsulin
rename LC015 DiabUnderControl
rename LC018 HaveCancer
rename LC024 HaveNewCancer
rename LC030 HaveLungCond
rename LC032 TakeRX4Lung
rename LC035 LungCondLimitAct
rename LC036 HaveHeartCond
rename LC037 TakeRX4Heart
rename LC040 RecentHeartAtk
rename LC042 TakeRX4HeartAtk
rename LC045 HaveAngina
rename LC046 TakeRX4Angina
rename LC047 AnginaLimitAct
rename LC048 HaveCongHeartFail
rename LC050 TakeRX4HeartFail
rename LC053 HasHadStroke
rename LC055 StrokeProblems
rename LC060 TakeRX4Stroke
rename LC062 RecentStroke
rename LC065 HavePsychProb
rename LC068 TakeRX4Depress
rename LC069 HaveMemProb
rename LC210 TakeRX4MemProb
rename LC070 HaveArthritis
rename LC074 TakeRX4Arthritis
rename LC075 ArthritisLimitAct
rename LC219 HaveOsteoArth
rename LC220 HaveRheumArth
rename LC221 HaveGoutLupus
rename LC222 HaveInjuryArth
rename LC240 HaveShingles
rename LC241 ShinglesBouts
rename LC245 ShinglesMaxPain
rename LC079 FallenRecently
rename LC080 NumFalls
rename LC081 InjuryFall
rename LC087 LostAnyUrine
rename LC088 LostUrineDaysAmt
rename LC089 LostUrineDaysgt5
rename LC090 LostUrineDaysgt15
rename LC091 LostUrineHowMuch
rename LC095 VisionQuality
rename LC102 UseHearingAid
rename LC103 HearingQuality
rename LC104 HaveFreqPain
rename LC105 PainSeverity
rename LC106 PainLimitAct
rename LC109 HadFluShot
rename LC110 HadCholTest
rename LC112 HadMammo
rename LC113 HadPapSmear
rename LC114 HadProstateEx
rename LC223 HowOftenVigAct
rename LC224 HowOftenModAct
rename LC225 HowOftenMildAct
rename LC143 HaveAnkleSwell
rename LC144 HaveShortBreath
rename LC145 HaveDizziness
rename LC146 HaveBackProb
rename LC147 HaveHeadache
rename LC148 HaveFatigue
rename LC149 HaveCoughing
rename LC229 DaysInBed
rename LC150 Depressed2Weeks
rename LA019 CurrentAge
rename LA028 InNursingHome
rename LA099 NumResChildren
rename LX060_R Sex
rename LX065_R CoupleStatus
rename LX004_R MonthBorn
rename LX067_R YearBorn
rename LG001 DiffWalkBlocks
rename LG002 DiffJogMile
rename LG003 DiffWalk1Block
rename LG004 DiffSitting
rename LG005 DiffStanding
rename LG006 DiffStairs
rename LG007 Diff1Stair
rename LG008 DiffStooping
rename LG009 DiffReaching
rename LG010 DiffPushing
rename LG011 DiffCarrying
rename LG012 DiffPickDime
rename LG014 DiffDressing
rename LG015 GetHelpDress
rename LG016 DiffCrossRoom
rename LG017 UseDevCrossRoom
rename LG020 GetHelpCrossRoom
rename LG021 DiffBathing
rename LG022 GetHelpBathing
rename LG023 DiffEating
rename LG024 GetHelpEating
rename LG025 DiffWithBed
rename LG026 UseDevWithBed
rename LG029 GetHelpWithBed
rename LG030 DiffToilet
rename LG031 GetHelpToilet
rename LG040 DiffUsingMap
rename LG041 DiffCooking
rename LG042 NoCookBCHealth
rename LG043 GetHelpCooking
rename LG044 DiffShopping
rename LG045 NoShopBCHealth
rename LG046 GetHelpShopping
rename LG047 DiffPhoning
rename LG048 NoPhoneBCHealth
rename LG049 GetHelpPhoning
rename LG050 DiffTakingRX
rename LG052 NoRXBCHealth
rename LG053 GetHelpTakingRX
rename LG058 GetHelpHousework
rename LG059 DiffMoney
rename LG060 NoMoneyBCHealth
rename LG061 GetHelpMoney
rename LG208 HandStrength
rename LG209 ShortBreathFreq
rename LG210 DiffBalanceFreq
rename LJ005M1 EmpStatus
rename LJ578 IsRetired
rename LC118 CigsPerDay
rename LC119 PacksPerDay
rename LC129 DaysWeekDrink
rename LC130 DrinksPerDay

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

save ../Extracted/MergedCore08.dta, replace
