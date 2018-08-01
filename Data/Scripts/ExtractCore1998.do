clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H98CS_R.dct
sort HHID PN
save ../Extracted/H98CS_R.dta, replace
clear all
infile using ../RawHRS/H98B_R.dct
sort HHID PN
save ../Extracted/H98B_R.dta, replace
clear all
infile using ../RawHRS/H98E_R.dct
sort HHID PN
save ../Extracted/H98E_R.dta, replace
clear all
infile using ../RawHRS/H98G_R.dct
sort HHID PN
save ../Extracted/H98G_R.dta, replace
clear all
infile using ../RawHRS/H98R_R.dct
sort HHID PN
save ../Extracted/H98R_R.dta, replace
clear all
infile using ../RawHRS/H98PR_R.dct
sort HHID PN
save ../Extracted/H98PR_R.dta, replace
clear all
infile using ../RawHRS/H98A_R.dct
sort HHID PN
save ../Extracted/H98A_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H98CS_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H98B_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H98E_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H98G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H98R_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H98PR_R.dta, sorted
drop _merge
sort HHID FSUBHH

keep HHID FSUBHH PN F5866 F5867 F5868 F5869 F5878 F5881 F5885 F5886 F5912 F5896 F5899 F5900 F5901 F5903 F5906M1 F5906M2 F5906M3 F5907 F5908 F5909 F5910 F5944 F5940 F5941 F5942 F5939 F5999 F6003 F6004 F5971 F5980 F2295 F2296 F2297 F2298 F2299 F2300 F2301 F2302 F2304 F2305 F2306 F2307 F2308 F2309 F2310 F2311 F2312 F2333 F2334 F2337 F2338 F2339 F2340 F2341 F2342 F2343 F2344 F2331 F2332 F2335 F2336 F2345 F2346 F2347 F2348 F2349 F2350 F2351 F2352 F2353 F2354 F2357 F2359 F2364 F2365 F2366 F2367 F2368 F2369 F2361 F2371 F2372 F2373 F2374 F2375 F2377 F2381 F2382M1 F1097 F1100 F1109 F1110 F1112 F1116 F1117 F1118 F1121 F1129 F1134 F1146 F1151 F1154 F1156 F1157 F1162 F1165 F1168 F1169 F1170 F1171 F1173 F1176 F1179 F1184 F1186 F1189 F1192 F1193 F1194 F1198 F1199 F1206 F1207 F1212 F1220 F1221 F1222 F1223 F1228 F1235 F1236 F1239 F1241 F1242 F1252 F1253 F1255 F1256 F1257 F1304 F1305 F1306 F1307 F1308 F1309 F1310 F2388 F1323 F517 F809 F469 F37_1 F968A F970A F122_1 F2383 F2384 F2385 F2386 F2387 F2391 F2392 F2394 F2397 F2400 F2403 F2406 F2409 F2412 F2415 F2418 F2421 F2425 F2426 F2427 F2428 F2431 F2444 F2447 F2454 F2457 F2464 F2467 F2470 F2477 F2480 F2553 F2562 F2564 F2565 F2567 F2569 F2570 F2572 F2574 F2575 F2577 F2579 F2580 F2617 F2618 F2619 F2620 F3115M1 F3570 F1262 F1268 F1269 F1283 F1284
rename FSUBHH SUBHH
rename F5866 HaveMedicareA
rename F5867 HaveMedicareB
rename F5868 HadMedicaid
rename F5869 HaveMedicaid
rename F5878 HaveChampus
rename F5881 MedicareByHMO
rename F5885 HMOPremAmt
rename F5886 HMOPremPer
rename F5912 Plan1PayRX
rename F5896 Plan1HowPurch
rename F5899 Plan1PremPay
rename F5900 Plan1PremAmt
rename F5901 Plan1PremPer
rename F5903 Plan1Medigap
rename F5906M1 Plan1WhoCoverA
rename F5906M2 Plan1WhoCoverB
rename F5906M3 Plan1WhoCoverC
rename F5907 Plan1IsHMO
rename F5908 Plan1DocNetwork
rename F5909 Plan1PayOutNtwk
rename F5910 Plan1HowPayDoc
rename F5944 Plan2PayRX
rename F5940 Plan2PremPay
rename F5941 Plan2PremAmt
rename F5942 Plan2PremPer
rename F5939 Plan2Medigap
rename F5999 HaveLTCIns
rename F6003 LTCPremAmt
rename F6004 LTCPremPer
rename F5971 EverWithoutIns
rename F5980 NoHealthInsNow
rename F2295 StayInHosp
rename F2296 HospNumStays
rename F2297 HospNumNights
rename F2298 HospCoverByIns
rename F2299 StayInLTC
rename F2300 LTCNumStays
rename F2301 LTCNumNights
rename F2302 LTCNumMonths
rename F2304 LTCCoverByIns
rename F2305 LTCOOPAmt
rename F2306 LTCOOPgt5000
rename F2307 LTCOOPgt10000
rename F2308 LTCOOPgt20000
rename F2309 LTCOOPgt50000
rename F2310 LTCOOPgt10000a
rename F2311 LTCOOPgt5000a
rename F2312 LTCOOPgt500
rename F2333 HadOutSurg
rename F2334 OutSurgCoverByIns
rename F2337 OutSurgOOPAmt
rename F2338 SgDenDocgt500
rename F2339 SgDenDocgt1000
rename F2340 SgDenDocgt5000
rename F2341 SgDenDocgt20000
rename F2342 SgDenDocgt1000a
rename F2343 SgDenDocgt500a
rename F2344 SgDenDocgt200
rename F2331 DocVisNum
rename F2332 DocVisCoverByIns
rename F2335 DentistVisit
rename F2336 DentistCoverByIns
rename F2345 TakeRXDrugs
rename F2346 RXCoverByIns
rename F2347 RXOOPAmt
rename F2348 RXOOPgt10
rename F2349 RXOOPgt20
rename F2350 RXOOPgt100
rename F2351 RXOOPgt500
rename F2352 RXOOPgt20a
rename F2353 RXOOPgt10a
rename F2354 RXOOPgt5
rename F2357 HoMedVisit
rename F2359 HoMedCoverByIns
rename F2364 HoMedOOPAmt
rename F2365 HoMedOOPgt5000
rename F2366 HoMedOOPgt10000
rename F2367 HoMedOOPgt20000
rename F2368 HoMedOOPgt1000
rename F2369 HoMedOOPgt500
rename F2361 SpecFacVisit
rename F2371 LTCAssigned
rename F2372 OutSurgAssigned
rename F2373 RXAssigned
rename F2374 HoMedAssigned
rename F2375 TotalOOPAssigned
rename F2377 RecdHelpWithBills
rename F2381 BillHelpAmt
rename F2382M1 HowPayLargeBills
rename F1097 HealthStatus
rename F1100 HealthChange
rename F1109 HaveHighBP
rename F1110 TakeRX4HighBP
rename F1112 BPUnderControl
rename F1116 HaveDiabetes
rename F1117 TakeRX4DiabOral
rename F1118 TakeRXInsulin
rename F1121 DiabUnderControl
rename F1129 HaveCancer
rename F1134 HaveNewCancer
rename F1146 HaveLungCond
rename F1151 TakeRX4Lung
rename F1154 LungCondLimitAct
rename F1156 HaveHeartCond
rename F1157 TakeRX4Heart
rename F1162 RecentHeartAtk
rename F1165 TakeRX4HeartAtk
rename F1168 HaveAngina
rename F1169 TakeRX4Angina
rename F1170 AnginaLimitAct
rename F1171 HaveCongHeartFail
rename F1173 TakeRX4HeartFail
rename F1176 HasHadStroke
rename F1179 StrokeProblems
rename F1184 TakeRX4Stroke
rename F1186 RecentStroke
rename F1189 HavePsychProb
rename F1192 TakeRX4Depress
rename F1193 HaveMemProb
rename F1194 HaveArthritis
rename F1198 TakeRX4Arthritis
rename F1199 ArthritisLimitAct
rename F1206 FallenRecently
rename F1207 NumFalls
rename F1212 InjuryFall
rename F1220 LostAnyUrine
rename F1221 LostUrineDaysAmt
rename F1222 LostUrineDaysgt5
rename F1223 LostUrineDaysgt15
rename F1228 VisionQuality
rename F1235 UseHearingAid
rename F1236 HearingQuality
rename F1239 HaveFreqPain
rename F1241 PainSeverity
rename F1242 PainLimitAct
rename F1252 HadFluShot
rename F1253 HadCholTest
rename F1255 HadMammo
rename F1256 HadPapSmear
rename F1257 HadProstateEx
rename F1304 HaveAnkleSwell
rename F1305 HaveShortBreath
rename F1306 HaveDizziness
rename F1307 HaveBackProb
rename F1308 HaveHeadache
rename F1309 HaveFatigue
rename F1310 HaveCoughing
rename F2388 DaysInBed
rename F1323 Depressed2Weeks
rename F517 InNursingHome
rename F809 NumResChildren
rename F469 Sex
rename F37_1 CoupleStatus
rename F968A MonthBorn
rename F970A YearBorn
rename F122_1 RandomEntryPt
rename F2383 TotalMedCostA
rename F2384 TotalMedCostB
rename F2385 TotalMedCostC
rename F2386 TotalMedCostD
rename F2387 TotalMedCostE
rename F2391 DiffWalkBlocks
rename F2392 DiffJogMile
rename F2394 DiffWalk1Block
rename F2397 DiffSitting
rename F2400 DiffStanding
rename F2403 DiffStairs
rename F2406 Diff1Stair
rename F2409 DiffStooping
rename F2412 DiffReaching
rename F2415 DiffPushing
rename F2418 DiffCarrying
rename F2421 DiffPickDime
rename F2425 DiffDressing
rename F2426 GetHelpDress
rename F2427 DiffCrossRoom
rename F2428 UseDevCrossRoom
rename F2431 GetHelpCrossRoom
rename F2444 DiffBathing
rename F2447 GetHelpBathing
rename F2454 DiffEating
rename F2457 GetHelpEating
rename F2464 DiffWithBed
rename F2467 UseDevWithBed
rename F2470 GetHelpWithBed
rename F2477 DiffToilet
rename F2480 GetHelpToilet
rename F2553 DiffUsingMap
rename F2562 DiffCooking
rename F2564 NoCookBCHealth
rename F2565 GetHelpCooking
rename F2567 DiffShopping
rename F2569 NoShopBCHealth
rename F2570 GetHelpShopping
rename F2572 DiffPhoning
rename F2574 NoPhoneBCHealth
rename F2575 GetHelpPhoning
rename F2577 DiffTakingRX
rename F2579 NoRXBCHealth
rename F2580 GetHelpTakingRX
rename F2617 GetHelpHousework
rename F2618 DiffMoney
rename F2619 NoMoneyBCHealth
rename F2620 GetHelpMoney
rename F3115M1 EmpStatus
rename F3570 IsRetired
rename F1262 DoesExercise
rename F1268 CigsPerDay
rename F1269 PacksPerDay
rename F1283 DaysWeekDrink
rename F1284 DrinksPerDay

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

save ../Extracted/MergedCore98.dta, replace
