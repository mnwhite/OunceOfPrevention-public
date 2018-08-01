* This script constructs objective measures of health status
* and runs an ordered probit on subjective health status.
capture log close

clear
cd ..
cd Extracted
use MainDataAll.dta

gen Health = .
replace Health = 1 if HealthStatus == 5
replace Health = 2 if HealthStatus == 4
replace Health = 3 if HealthStatus == 3
replace Health = 4 if HealthStatus == 2
replace Health = 5 if HealthStatus == 1

* Health problems: HaveHighBP BPUnderControl HaveDiabetes DiabUnderControl HaveCancer HaveLungCond HaveHeartCond HasHadStroke StrokeProblems HavePsychProb HaveMemProb HaveArthritis
gen HighBP = 0
replace HighBP = 1 if HaveHighBP == 1 | HaveHighBP == 3
gen BadBP = 0
replace BadBP = 1 if BPUnderControl == 5
gen Diabetes = 0
replace Diabetes = 1 if HaveDiabetes == 1 | HaveDiabetes == 3
gen BadDiab = 0
replace BadDiab = 1 if DiabUnderControl == 5
gen Cancer = 0
replace Cancer = 1 if HaveCancer == 1 | HaveCancer == 3
gen LungCond = 0
replace LungCond = 1 if HaveLungCond == 1 | HaveLungCond == 3
gen HeartCond = 0
replace HeartCond = 1 if HaveHeartCond == 1 | HaveHeartCond == 3
gen Stroke = 0
replace Stroke = 1 if HasHadStroke == 1 | HasHadStroke == 2 | HasHadStroke == 3
gen StrokeProb = 0
replace StrokeProb = 1 if StrokeProblems == 1
gen PsychProb = 0
replace PsychProb = 1 if HavePsychProb == 1 | HavePsychProb == 3
gen MemProb = 0
replace MemProb = 1 if HaveMemProb == 1 | HaveMemProb == 3
gen Arthritis = 0
replace Arthritis = 1 if HaveArthritis == 1 | HaveArthritis == 3
local HealthProbs HighBP BadBP Diabetes BadDiab Cancer LungCond HeartCond Stroke StrokeProb PsychProb MemProb Arthritis

* Symptoms: FallenRecently NumFalls InjuryFall LostAnyUrine LostUrineDaysAmt HaveFreqPain PainSeverity Depressed2Weeks BedDays
gen Fallen = 0
replace Fallen = 1 if FallenRecently == 1
gen FallCount = 0
replace FallCount = NumFalls if NumFalls < 98
gen HurtFall = 0
replace HurtFall = 1 if InjuryFall == 1
gen LostUrineDays = 0
replace LostUrineDays = LostUrineDaysAmt if LostUrineDaysAmt < 98
gen LostUrine = 0
replace LostUrine = 1 if LostAnyUrine == 1 & LostUrineDays > 0
gen LostSmallUrine = 0
replace LostSmallUrine = 1 if LostUrineHowMuch == 2 | LostUrineHowMuch == 1
gen LostLargeUrine = 0
replace LostLargeUrine = 1 if LostUrineHowMuch == 3 | LostUrineHowMuch == 2 | LostUrineHowMuch == 1
gen MildPain = 0
replace MildPain = 1 if PainSeverity >= 1 & PainSeverity <= 3
gen ModPain = 0
replace ModPain = 1 if PainSeverity >= 2 & PainSeverity <= 3
gen BadPain = 0
replace BadPain = 1 if PainSeverity == 3
gen Depress = 0
replace Depress = 1 if Depressed2Weeks == 1
gen BedDays = 0
replace BedDays = DaysInBed if DaysInBed < 98
local Symptoms Fallen FallCount HurtFall LostUrineDays MildPain ModPain BadPain Depress BedDays

* Mobility: DiffWalkBlocks DiffJogMile DiffWalk1Block DiffSitting DiffStanding DiffStairs Diff1Stair DiffStooping DiffReaching DiffPushing DiffCarrying DiffPickDime
gen DiffWalk = 0
replace DiffWalk = 1 if DiffWalkBlocks == 1 | DiffWalkBlocks == 6 | DiffWalkBlocks == 7
gen BadDiffWalk = 0
replace BadDiffWalk = 1 if DiffWalk1Block == 1 | DiffWalk1Block == 6 | DiffWalk1Block == 7
gen DiffJog = 1
replace DiffJog = 0 if DiffJogMile == 5
gen DiffSit = 0
replace DiffSit = 1 if DiffSitting == 1 | DiffSitting == 6 | DiffSitting == 7
gen DiffStand = 0
replace DiffStand = 1 if DiffStanding == 1 | DiffStanding == 6 | DiffStanding == 7
gen DiffStair = 0
replace DiffStair = 1 if DiffStairs == 1 | DiffStairs == 6 | DiffStairs == 7
gen BadDiffStair = 0
replace BadDiffStair = 1 if Diff1Stair == 1 | Diff1Stair == 6 | Diff1Stair == 7
gen DiffStoop = 0
replace DiffStoop = 1 if DiffStooping == 1 | DiffStooping == 6 | DiffStooping == 7
gen DiffReach = 0
replace DiffReach = 1 if DiffReaching == 1 | DiffReaching == 6 | DiffReaching == 7
gen DiffPush = 0
replace DiffPush = 1 if DiffPushing == 1 | DiffPushing == 6 | DiffPushing == 7
gen DiffCarry = 0
replace DiffCarry = 1 if DiffCarrying == 1 | DiffCarrying == 6 | DiffCarrying == 7
gen DiffDime = 0
replace DiffDime = 1 if DiffPickDime == 1 | DiffPickDime == 6 | DiffPickDime == 7
local Mobility DiffJog DiffWalk BadDiffWalk DiffSit DiffStand DiffStair BadDiffStair DiffStoop DiffReach DiffPush DiffCarry DiffDime

* Instr Activities: DiffUsingMap DiffCooking DiffShopping DiffPhoning DiffTakingRX DiffMoney
gen DiffMap = 0
replace DiffMap = 1 if DiffUsingMap == 1 | DiffUsingMap == 6 | DiffUsingMap == 7
gen DiffCook = 0
replace DiffCook = 1 if DiffCooking == 1 | ((DiffCooking == 6 | DiffCooking == 7) & NoCookBCHealth == 1)
gen DiffShop = 0
replace DiffShop = 1 if DiffShopping == 1 | ((DiffShopping == 6 | DiffShopping == 7) & NoShopBCHealth == 1)
gen DiffPhone = 0
replace DiffPhone = 1 if DiffPhoning == 1 | ((DiffPhoning == 6 | DiffPhoning == 7) & NoPhoneBCHealth == 1)
gen DiffRX = 0
replace DiffRX = 1 if DiffTakingRX == 1 | ((DiffTakingRX == 6 | DiffTakingRX == 7) & NoRXBCHealth == 1)
gen DiffCash = 0
replace DiffCash = 1 if DiffMoney == 1 | ((DiffMoney == 6 | DiffMoney == 7) & NoMoneyBCHealth == 1)
local InstrAct DiffMap DiffCook DiffShop DiffPhone DiffRX DiffCash

* Basic Activities: DiffDressing DiffCrossRoom DiffEating DiffBathing DiffWithBed DiffToilet
gen DiffDress = 0
replace DiffDress = 1 if DiffDressing == 1 | DiffDressing == 6 | DiffDressing == 7
gen DiffRoom = 0
replace DiffRoom = 1 if DiffCrossRoom == 1 | DiffCrossRoom == 6 | DiffCrossRoom == 7
gen DiffBathe = 0
replace DiffBathe = 1 if DiffBathing == 1 | DiffBathing == 6 | DiffBathing == 7
gen DiffBed = 0
replace DiffBed = 1 if DiffWithBed == 1 | DiffWithBed == 6 | DiffDressing == 7
gen DiffPotty = 0
replace DiffPotty = 1 if DiffToilet == 1 | DiffToilet == 6 | DiffToilet == 7
gen DiffEat = 0
replace DiffEat = 1 if DiffEating == 1 | DiffEating == 6 | DiffEating == 7
gen HasBasic = 0
replace HasBasic = 1 if DiffEating != .
local BasicAct DiffDress DiffRoom DiffBathe DiffBed DiffPotty DiffEat

* Health Precautions: HadFluShot, HadCholTest, HadMammo, HadProstateEx
gen FluShot = 0
replace FluShot = 1 if HadFluShot == 1
gen CholTest = 0
replace CholTest = 1 if HadCholTest == 1
gen Screened = 0
replace Screened = 1 if HadMammo == 1 | HadProstateEx == 1
local Precaution FluShot CholTest Screened

gen Female = 0
replace Female = 1 if Sex == 2
gen AgeMin65 = CurrentAge - 65
*gen HHIDPN = real(HHID + PN)
replace Year = Year - 1996
gen one = 1
gen Income = log(TotalIncome)
gen Wealth = TotalWealth/10000

oprobit Health `HealthProbs'
oprobit Health `Symptoms'
oprobit Health `Mobility'
oprobit Health `InstrAct'
oprobit Health `BasicAct'
oprobit Health `Precaution'
replace Sex = 2 - Sex

log using HealthRegression.log, replace

oprobit Health Sex `HealthProbs' `Symptoms' `Mobility' `BasicAct' `InstrAct'
matrix b = e(b)

matrix HealthCoeffs = e(b)
mat V=e(V) // place e(V) in V
mat HealthStdErrs=J(1,50,-9999) // create empty matrix for standard errors
forval i=1/50 {
    mat HealthStdErrs[1,`i']=sqrt(V[`i',`i']) // convert the variances into the se one at a time
}

predict HScore, xb
scalar LowCut = b[1,colnumb(b,"/: cut1")]
scalar HighCut = b[1,colnumb(b,"/: cut4")]
summarize HScore if HScore < LowCut, detail
scalar VeryLowHScore = r(p10)
gen HLevel = (HScore - VeryLowHScore)/(HighCut - VeryLowHScore)
replace HLevel = 1 if HLevel > 1 & HLevel != .
replace HLevel = 0.01 if HLevel < 0.01

display HighCut
display VeryLowHScore

oprobit Health Sex `HealthProbs' `Symptoms' `Mobility' `InstrAct' `Precaution'
oprobit Health Sex Income Wealth `HealthProbs' `Symptoms' `Mobility' `InstrAct' `Precaution'

capture log close

*oprobit Health if CurrentAge > 50 & CurrentAge <= 55, offset(HScore)
*oprobit Health if CurrentAge > 55 & CurrentAge <= 60, offset(HScore)
*oprobit Health if CurrentAge > 60 & CurrentAge <= 65, offset(HScore)
*oprobit Health if CurrentAge > 65 & CurrentAge <= 70, offset(HScore)
*oprobit Health if CurrentAge > 70 & CurrentAge <= 75, offset(HScore)
*oprobit Health if CurrentAge > 75 & CurrentAge <= 80, offset(HScore)
*oprobit Health if CurrentAge > 80 & CurrentAge <= 85, offset(HScore)
*oprobit Health if CurrentAge > 85 & CurrentAge <= 90, offset(HScore)

gen HHIDPN = HHID + PN
replace Year = Year + 1996
keep HHIDPN Year HLevel
keep if HLevel != .
sort HHIDPN Year
order HHIDPN Year
save HealthData.dta, replace

clear
svmat double HealthCoeffs, name(HealthCoeffs)
svmat double HealthStdErrs, name(HealthStdErrs)
export delimited ../HealthCoeffs.txt, replace
clear all

cd ..
cd Scripts

