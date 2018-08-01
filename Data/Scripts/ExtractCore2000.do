clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H00CS_R.dct
sort HHID PN
save ../Extracted/H00CS_R.dta, replace
clear all
infile using ../RawHRS/H00B_R.dct
sort HHID PN
save ../Extracted/H00B_R.dta, replace
clear all
infile using ../RawHRS/H00E_R.dct
sort HHID PN
save ../Extracted/H00E_R.dta, replace
clear all
infile using ../RawHRS/H00G_R.dct
sort HHID PN
save ../Extracted/H00G_R.dta, replace
clear all
infile using ../RawHRS/H00R_R.dct
sort HHID PN
save ../Extracted/H00R_R.dta, replace
clear all
infile using ../RawHRS/H00PR_R.dct
sort HHID PN
save ../Extracted/H00PR_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H00CS_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H00B_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H00E_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H00G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H00R_R.dta, sorted
drop _merge
sort HHID GSUBHH

keep HHID GSUBHH PN G6238 G6240 G6241 G6242 G6251 G6254 G6258 G6259 G6285 G6269 G6272 G6273 G6274 G6276 G6279M1 G6279M2 G6279M3 G6280 G6281 G6282 G6283 G6318 G6314 G6315 G6316 G6313 G6393 G6397 G6398 G6357 G6366 G2567 G2568 G2569 G2570 G2571 G2572 G2573 G2574 G2576 G2577 G2578 G2579 G2580 G2581 G2582 G2583 G2584 G2610 G2611 G2614 G2615 G2616 G2617 G2618 G2619 G2620 G2621 G2603 G2604 G2605 G2606 G2607 G2609 G2612 G2613 G2622 G2623 G2624 G2625 G2626 G2627 G2628 G2629 G2630 G2631 G2634 G2636 G2641 G2642 G2643 G2644 G2645 G2646 G2638 G2648 G2649 G2650 G2651 G2652 G2654 G2658 G2659M1 G1226 G1229 G1238 G1239 G1241 G1245 G1248 G1249 G1252 G1262 G1267 G1279 G1284 G1287 G1289 G1290 G1295 G1298 G1301 G1302 G1303 G1304 G1306 G1309 G1312 G1317 G1319 G1322 G1325 G1326 G1327 G1331 G1332 G1339 G1340 G1345 G1353 G1354 G1355 G1356 G1361 G1368 G1369 G1372 G1374 G1375 G1385 G1386 G1388 G1389 G1390 G1437 G1438 G1439 G1440 G1441 G1442 G1443 G2686 G1456 G558 G886 G490 G37_1 G950 G949 G122 G2660 G2661 G2683 G2684 G2685 G2689 G2690 G2692 G2695 G2698 G2701 G2704 G2707 G2710 G2713 G2716 G2719 G2723 G2724 G2725 G2726 G2729 G2742 G2745 G2752 G2755 G2762 G2765 G2768 G2775 G2778 G2851 G2860 G2862 G2863 G2865 G2867 G2868 G2870 G2872 G2873 G2875 G2877 G2878 G2915 G2916 G2917 G2918 G3365M1 G3859 G1395 G1401 G1402 G1416 G1417
rename GSUBHH SUBHH
rename G6238 HaveMedicareA
rename G6240 HaveMedicareB
rename G6241 HadMedicaid
rename G6242 HaveMedicaid
rename G6251 HaveChampus
rename G6254 MedicareByHMO
rename G6258 HMOPremAmt
rename G6259 HMOPremPer
rename G6285 Plan1PayRX
rename G6269 Plan1HowPurch
rename G6272 Plan1PremPay
rename G6273 Plan1PremAmt
rename G6274 Plan1PremPer
rename G6276 Plan1Medigap
rename G6279M1 Plan1WhoCoverA
rename G6279M2 Plan1WhoCoverB
rename G6279M3 Plan1WhoCoverC
rename G6280 Plan1IsHMO
rename G6281 Plan1DocNetwork
rename G6282 Plan1PayOutNtwk
rename G6283 Plan1HowPayDoc
rename G6318 Plan2PayRX
rename G6314 Plan2PremPay
rename G6315 Plan2PremAmt
rename G6316 Plan2PremPer
rename G6313 Plan2Medigap
rename G6393 HaveLTCIns
rename G6397 LTCPremAmt
rename G6398 LTCPremPer
rename G6357 EverWithoutIns
rename G6366 NoHealthInsNow
rename G2567 StayInHosp
rename G2568 HospNumStays
rename G2569 HospNumNights
rename G2570 HospCoverByIns
rename G2571 StayInLTC
rename G2572 LTCNumStays
rename G2573 LTCNumNights
rename G2574 LTCNumMonths
rename G2576 LTCCoverByIns
rename G2577 LTCOOPAmt
rename G2578 LTCOOPgt5000
rename G2579 LTCOOPgt10000
rename G2580 LTCOOPgt20000
rename G2581 LTCOOPgt50000
rename G2582 LTCOOPgt10000a
rename G2583 LTCOOPgt5000a
rename G2584 LTCOOPgt500
rename G2610 HadOutSurg
rename G2611 OutSurgCoverByIns
rename G2614 OutSurgOOPAmt
rename G2615 SgDenDocgt500
rename G2616 SgDenDocgt1000
rename G2617 SgDenDocgt5000
rename G2618 SgDenDocgt20000
rename G2619 SgDenDocgt1000a
rename G2620 SgDenDocgt500a
rename G2621 SgDenDocgt200
rename G2603 DocVisNum
rename G2604 DocVisgt20
rename G2605 DocVisgt5
rename G2606 DocVisgt1
rename G2607 DocVisgt50
rename G2609 DocVisCoverByIns
rename G2612 DentistVisit
rename G2613 DentistCoverByIns
rename G2622 TakeRXDrugs
rename G2623 RXCoverByIns
rename G2624 RXOOPAmt
rename G2625 RXOOPgt10
rename G2626 RXOOPgt20
rename G2627 RXOOPgt100
rename G2628 RXOOPgt500
rename G2629 RXOOPgt20a
rename G2630 RXOOPgt10a
rename G2631 RXOOPgt5
rename G2634 HoMedVisit
rename G2636 HoMedCoverByIns
rename G2641 HoMedOOPAmt
rename G2642 HoMedOOPgt5000
rename G2643 HoMedOOPgt10000
rename G2644 HoMedOOPgt20000
rename G2645 HoMedOOPgt1000
rename G2646 HoMedOOPgt500
rename G2638 SpecFacVisit
rename G2648 LTCAssigned
rename G2649 OutSurgAssigned
rename G2650 RXAssigned
rename G2651 HoMedAssigned
rename G2652 TotalOOPAssigned
rename G2654 RecdHelpWithBills
rename G2658 BillHelpAmt
rename G2659M1 HowPayLargeBills
rename G1226 HealthStatus
rename G1229 HealthChange
rename G1238 HaveHighBP
rename G1239 TakeRX4HighBP
rename G1241 BPUnderControl
rename G1245 HaveDiabetes
rename G1248 TakeRX4DiabOral
rename G1249 TakeRXInsulin
rename G1252 DiabUnderControl
rename G1262 HaveCancer
rename G1267 HaveNewCancer
rename G1279 HaveLungCond
rename G1284 TakeRX4Lung
rename G1287 LungCondLimitAct
rename G1289 HaveHeartCond
rename G1290 TakeRX4Heart
rename G1295 RecentHeartAtk
rename G1298 TakeRX4HeartAtk
rename G1301 HaveAngina
rename G1302 TakeRX4Angina
rename G1303 AnginaLimitAct
rename G1304 HaveCongHeartFail
rename G1306 TakeRX4HeartFail
rename G1309 HasHadStroke
rename G1312 StrokeProblems
rename G1317 TakeRX4Stroke
rename G1319 RecentStroke
rename G1322 HavePsychProb
rename G1325 TakeRX4Depress
rename G1326 HaveMemProb
rename G1327 HaveArthritis
rename G1331 TakeRX4Arthritis
rename G1332 ArthritisLimitAct
rename G1339 FallenRecently
rename G1340 NumFalls
rename G1345 InjuryFall
rename G1353 LostAnyUrine
rename G1354 LostUrineDaysAmt
rename G1355 LostUrineDaysgt5
rename G1356 LostUrineDaysgt15
rename G1361 VisionQuality
rename G1368 UseHearingAid
rename G1369 HearingQuality
rename G1372 HaveFreqPain
rename G1374 PainSeverity
rename G1375 PainLimitAct
rename G1385 HadFluShot
rename G1386 HadCholTest
rename G1388 HadMammo
rename G1389 HadPapSmear
rename G1390 HadProstateEx
rename G1437 HaveAnkleSwell
rename G1438 HaveShortBreath
rename G1439 HaveDizziness
rename G1440 HaveBackProb
rename G1441 HaveHeadache
rename G1442 HaveFatigue
rename G1443 HaveCoughing
rename G2686 DaysInBed
rename G1456 Depressed2Weeks
rename G558 InNursingHome
rename G886 NumResChildren
rename G490 Sex
rename G37_1 CoupleStatus
rename G950 MonthBorn
rename G949 YearBorn
rename G122 RandomEntryPt
rename G2660 TotalMedCostA
rename G2661 TotalMedCostB
rename G2683 TotalMedCostC
rename G2684 TotalMedCostD
rename G2685 TotalMedCostE
rename G2689 DiffWalkBlocks
rename G2690 DiffJogMile
rename G2692 DiffWalk1Block
rename G2695 DiffSitting
rename G2698 DiffStanding
rename G2701 DiffStairs
rename G2704 Diff1Stair
rename G2707 DiffStooping
rename G2710 DiffReaching
rename G2713 DiffPushing
rename G2716 DiffCarrying
rename G2719 DiffPickDime
rename G2723 DiffDressing
rename G2724 GetHelpDress
rename G2725 DiffCrossRoom
rename G2726 UseDevCrossRoom
rename G2729 GetHelpCrossRoom
rename G2742 DiffBathing
rename G2745 GetHelpBathing
rename G2752 DiffEating
rename G2755 GetHelpEating
rename G2762 DiffWithBed
rename G2765 UseDevWithBed
rename G2768 GetHelpWithBed
rename G2775 DiffToilet
rename G2778 GetHelpToilet
rename G2851 DiffUsingMap
rename G2860 DiffCooking
rename G2862 NoCookBCHealth
rename G2863 GetHelpCooking
rename G2865 DiffShopping
rename G2867 NoShopBCHealth
rename G2868 GetHelpShopping
rename G2870 DiffPhoning
rename G2872 NoPhoneBCHealth
rename G2873 GetHelpPhoning
rename G2875 DiffTakingRX
rename G2877 NoRXBCHealth
rename G2878 GetHelpTakingRX
rename G2915 GetHelpHousework
rename G2916 DiffMoney
rename G2917 NoMoneyBCHealth
rename G2918 GetHelpMoney
rename G3365M1 EmpStatus
rename G3859 IsRetired
rename G1395 DoesExercise
rename G1401 CigsPerDay
rename G1402 PacksPerDay
rename G1416 DaysWeekDrink
rename G1417 DrinksPerDay

do DefineLabels.do
label variable SUBHH "Sub-household ID number"
label variable HaveMedicareA "Covered by Medicare now?"
label variable HaveMedicareB "Have Medicare Part B?"
label variable HadMedicaid "Covered by Medicaid recently?"
label variable HaveMedicaid "Covered by Medicaid now?"
label variable HaveChampus "Covered by military plan now?"
label variable MedicareByHMO "Medicare by HMO?"
label variable HMOPremAmt "HMO premiums amount"
label variable HMOPremPer "HMO premiums period"
label variable Plan1PayRX "Does plan 1 help with prescriptions?"
label variable Plan1HowPurch "How plan 1 was purchased"
label variable Plan1PremPay "Pay all/some/none premiums on plan 1"
label variable Plan1PremAmt "Premiums paid for plan 1 amount"
label variable Plan1PremPer "Premiums paid period (2000 and before)"
label variable Plan1Medigap "Plan 1 is Medigap (2000 and before)"
label variable Plan1WhoCoverA "Who else covered by plan 1 (first)?"
label variable Plan1WhoCoverB "Who else covered by plan 1 (second)?"
label variable Plan1WhoCoverC "Who else covered by plan 1 (third)?"
label variable Plan1IsHMO "Is plan 1 an HMO?"
label variable Plan1DocNetwork "Plan 1 have a doctor network?"
label variable Plan1PayOutNtwk "Plan 1 pay for outside network care?"
label variable Plan1HowPayDoc "How plan 1 copays on doc visits if HMO"
label variable Plan2PayRX "Does plan 2 help with prescriptions?"
label variable Plan2PremPay "Pay all/some/none premiums on plan 2"
label variable Plan2PremAmt "Premiums paid for plan 2 amount"
label variable Plan2PremPer "Premiums paid period (2000 and before)"
label variable Plan2Medigap "Plan 2 is Medigap (2000 and before)"
label variable HaveLTCIns "Have long term care insurance?"
label variable LTCPremAmt "Premium for LTC insurance amount"
label variable LTCPremPer "Premium for LTC insurance period"
label variable EverWithoutIns "Ever without health insurance?"
label variable NoHealthInsNow "Confirm no health insurance now?"
label variable StayInHosp "Have you stayed in hospital overnight?"
label variable HospNumStays "Number of stays in hospital"
label variable HospNumNights "Number of nights spent in hospital"
label variable HospCoverByIns "How much of hosp stay covered by ins?"
label variable StayInLTC "Ever stay in long term care?"
label variable LTCNumStays "Number of stays in long term care"
label variable LTCNumNights "Number of nights spent in LTC"
label variable LTCNumMonths "Number of months spent in LTC"
label variable LTCCoverByIns "How much of LTC stay covered by ins?"
label variable LTCOOPAmt "Out of pocket LTC bills amount"
label variable LTCOOPgt5000 "Hosp/LTC more than 5000?"
label variable LTCOOPgt10000 "Hosp/LTC more than 10000?"
label variable LTCOOPgt20000 "Hosp/LTC more than 20000?"
label variable LTCOOPgt50000 "Hosp/LTC more than 50000?"
label variable LTCOOPgt10000a "Hosp/LTC more than 10000?"
label variable LTCOOPgt5000a "Hosp/LTC more than 5000?"
label variable LTCOOPgt500 "Hosp/LTC more than 500?"
label variable HadOutSurg "Had outpatient surgery?"
label variable OutSurgCoverByIns "How much of surgery covered by ins?"
label variable OutSurgOOPAmt "Out of pocket surgery costs amount"
label variable SgDenDocgt500 "Surg/dental/doc more than 500?"
label variable SgDenDocgt1000 "Surg/dental/doc more than 1000?"
label variable SgDenDocgt5000 "Surg/dental/doc more than 5000?"
label variable SgDenDocgt20000 "Surg/dental/doc more than 20000?"
label variable SgDenDocgt1000a "Surg/dental/doc more than 1000?"
label variable SgDenDocgt500a "Surg/dental/doc more than 500?"
label variable SgDenDocgt200 "Surg/dental/doc more than 200?"
label variable DocVisNum "Number other doctor consultations"
label variable DocVisgt20 "Doctor visits relative to 20?"
label variable DocVisgt5 "Doctor visits relative to 5?"
label variable DocVisgt1 "Doctor visits relative to 1?"
label variable DocVisgt50 "Doctor visits relative to 50?"
label variable DocVisCoverByIns "How much of doc visits covered by ins?"
label variable DentistVisit "Seen dentist?"
label variable DentistCoverByIns "How much of dentist covered by ins?"
label variable TakeRXDrugs "Regularly take prescription drugs?"
label variable RXCoverByIns "How much of drugs covered by ins?"
label variable RXOOPAmt "Out of pocket drugs/month amount"
label variable RXOOPgt10 "Prescriptions more than 10?"
label variable RXOOPgt20 "Prescriptions more than 20?"
label variable RXOOPgt100 "Prescriptions more than 100?"
label variable RXOOPgt500 "Prescriptions more than 500?"
label variable RXOOPgt20a "Prescriptions more than 20?"
label variable RXOOPgt10a "Prescriptions more than 10?"
label variable RXOOPgt5 "Prescriptions more than 5?"
label variable HoMedVisit "Received home medical care?"
label variable HoMedCoverByIns "How much of home care covered by ins?"
label variable HoMedOOPAmt "Out of pocket home care amount"
label variable HoMedOOPgt5000 "Home care more than 5000?"
label variable HoMedOOPgt10000 "Home care more than 10000?"
label variable HoMedOOPgt20000 "Home care more than 20000?"
label variable HoMedOOPgt1000 "Home care more than 1000?"
label variable HoMedOOPgt500 "Home care more than 500?"
label variable SpecFacVisit "Used other special facility?"
label variable LTCAssigned "Assigned long term care  costs"
label variable OutSurgAssigned "Assigned outpatient surgery costs"
label variable RXAssigned "Assigned prescription costs"
label variable HoMedAssigned "Assigned home care costs"
label variable TotalOOPAssigned "Assigned total out of pocket costs"
label variable RecdHelpWithBills "Received help with paying med bills?"
label variable BillHelpAmt "Med bill help received amount"
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
label variable DaysInBed "Days spent in bed in last month"
label variable Depressed2Weeks "Felt depressed for two weeks?"
label variable InNursingHome "Is living in nursing home"
label variable NumResChildren "Number of resident children"
label variable Sex "Sex"
label variable CoupleStatus "Couple status"
label variable MonthBorn "Month born"
label variable YearBorn "Year born"
label variable RandomEntryPt "Random entry point for med cost"
label variable TotalMedCostA "Total medical cost range (confusing)"
label variable TotalMedCostB "Total medical cost more than 5000?"
label variable TotalMedCostC "Total medical cost more than 1k or 25k?"
label variable TotalMedCostD "Total medical cost more than 100000?"
label variable TotalMedCostE "Total medical cost more than 500000?"
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
label values HMOPremPer Period1
label values Plan1PayRX YesNo
label values Plan1HowPurch HowObtain
label values Plan1PremPay AllSomeNone
summarize Plan1PremAmt
local j = ceil(log(r(max))/log(10))
label values Plan1PremAmt Value`j'
label values Plan1PremPer Period2
label values Plan1Medigap YesNo
label values Plan1IsHMO YesNo
label values Plan1DocNetwork YesNo
label values Plan1PayOutNtwk YesNoRef
label values Plan1HowPayDoc DocPay
label values Plan2PayRX YesNo
label values Plan2PremPay AllSomeNone
summarize Plan2PremAmt
local j = ceil(log(r(max))/log(10))
label values Plan2PremAmt Value`j'
label values Plan2PremPer Period2
label values Plan2Medigap YesNo
label values HaveLTCIns YesNo
summarize LTCPremAmt
local j = ceil(log(r(max))/log(10))
label values LTCPremAmt Value`j'
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
label values LTCOOPgt5000 MoreLess1
label values LTCOOPgt10000 MoreLess1
label values LTCOOPgt20000 MoreLess1
label values LTCOOPgt50000 MoreLess1
label values LTCOOPgt10000a MoreLess1
label values LTCOOPgt5000a MoreLess1
label values LTCOOPgt500 MoreLess1
label values HadOutSurg YesNo
label values OutSurgCoverByIns InsCoverage
summarize OutSurgOOPAmt
local j = ceil(log(r(max))/log(10))
label values OutSurgOOPAmt Value`j'
label values SgDenDocgt500 MoreLess1
label values SgDenDocgt1000 MoreLess1
label values SgDenDocgt5000 MoreLess1
label values SgDenDocgt20000 MoreLess1
label values SgDenDocgt1000a MoreLess1
label values SgDenDocgt500a MoreLess1
label values SgDenDocgt200 MoreLess1
summarize DocVisNum
local j = ceil(log(r(max))/log(10))
label values DocVisNum Value`j'
label values DocVisgt20 MoreLess1
label values DocVisgt5 MoreLess1
label values DocVisgt1 MoreLess1
label values DocVisgt50 MoreLess1
label values DocVisCoverByIns InsCoverage
label values DentistVisit YesNo
label values DentistCoverByIns InsCoverage
label values TakeRXDrugs YesNoRX
label values RXCoverByIns InsCoverage
summarize RXOOPAmt
local j = ceil(log(r(max))/log(10))
label values RXOOPAmt Value`j'
label values RXOOPgt10 MoreLess1
label values RXOOPgt20 MoreLess1
label values RXOOPgt100 MoreLess1
label values RXOOPgt500 MoreLess1
label values RXOOPgt20a MoreLess1
label values RXOOPgt10a MoreLess1
label values RXOOPgt5 MoreLess1
label values HoMedVisit YesNo
label values HoMedCoverByIns InsCoverage
summarize HoMedOOPAmt
local j = ceil(log(r(max))/log(10))
label values HoMedOOPAmt Value`j'
label values HoMedOOPgt5000 MoreLess1
label values HoMedOOPgt10000 MoreLess1
label values HoMedOOPgt20000 MoreLess1
label values HoMedOOPgt1000 MoreLess1
label values HoMedOOPgt500 MoreLess1
label values SpecFacVisit YesNo
summarize LTCAssigned
local j = ceil(log(r(max))/log(10))
label values LTCAssigned Value`j'
summarize OutSurgAssigned
local j = ceil(log(r(max))/log(10))
label values OutSurgAssigned Value`j'
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

save ../Extracted/MergedCore00.dta, replace
