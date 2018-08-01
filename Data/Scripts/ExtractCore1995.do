clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/A95CS_R.dct
sort HHID PN
save ../Extracted/A95CS_R.dta, replace
clear all
infile using ../RawHRS/A95B_R.dct
sort HHID PN
save ../Extracted/A95B_R.dta, replace
clear all
infile using ../RawHRS/A95E_R.dct
sort HHID PN
save ../Extracted/A95E_R.dta, replace
clear all
infile using ../RawHRS/A95G_R.dct
sort HHID PN
save ../Extracted/A95G_R.dta, replace
clear all
infile using ../RawHRS/A95R_R.dct
sort HHID PN
save ../Extracted/A95R_R.dta, replace
clear all
infile using ../RawHRS/A95PR_R.dct
sort HHID PN
save ../Extracted/A95PR_R.dta, replace
clear all
infile using ../RawHRS/A95A_R.dct
sort HHID PN
save ../Extracted/A95A_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/A95CS_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/A95B_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/A95E_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/A95G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/A95R_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/A95PR_R.dta, sorted
drop _merge
sort HHID DSUBHH

keep HHID DSUBHH PN D5144 D5145 D5155 D5158 D5175 D5183 D5193 D5194 D5215 D5252 D5225M1 D5226 D5227 D5228 D5242M1 D5243 D5244 D5245 D5263 D5267 D5268 D1664 D1665 D1666 D1669 D1681 D1682 D1683 D1684 D1686 D1688 D1692 D1689 D1690 D1691 D1693 D1713 D1716 D1732 D1736 D1733 D1734 D1735 D1737 D1698 D1701 D1728 D1731 D1744 D1748 D1749 D1753 D1750 D1751 D1752 D1754 D1760 D1762 D1781 D1782 D1783 D1784 D1785 D1786 D1774 D1805 D1809 D769 D772 D781 D782 D784 D788 D789 D790 D793 D801 D806 D818 D823 D826 D828 D829 D834 D837 D840 D841 D842 D843 D845 D848 D851 D856 D858 D861 D864 D866 D870 D871 D878 D879 D884 D892 D893 D894 D895 D900 D907 D908 D911 D912 D914 D919 D920 D926 D927 D929 D963 D964 D967 D968 D969 D972 D973 D1812 D985 D240 D506 D210 D674 D636A D638A D1834 D1837 D1840 D1843 D1846 D1849 D1852 D1855 D1858 D1861 D1864 D1867 D1884 D1887 D1871 D1874 D1877 D1894 D1897 D1904 D1907 D1914 D1917 D1920 D1927 D1930 D2012 D2021 D2023 D2024 D2026 D2028 D2029 D2031 D2033 D2034 D2036 D2038 D2039 D2076 D2099 D2100 D2102 D2626M1 D3130 D934 D943 D944 D950 D951
rename DSUBHH SUBHH
rename D5144 HaveMedicareA
rename D5145 HaveMedicareB
rename D5155 HadMedicaid
rename D5158 HaveMedicaid
rename D5175 HaveChampus
rename D5183 MedicareByHMO
rename D5193 HMOPremAmt
rename D5194 HMOPremPer
rename D5215 NumPrivPlans
rename D5252 Plan1PayRX
rename D5225M1 Plan1HowPurch
rename D5226 Plan1PremPay
rename D5227 Plan1PremAmt
rename D5228 Plan1PremPer
rename D5242M1 Plan2HowPurch
rename D5243 Plan2PremPay
rename D5244 Plan2PremAmt
rename D5245 Plan2PremPer
rename D5263 HaveLTCIns
rename D5267 LTCPremAmt
rename D5268 LTCPremPer
rename D1664 StayInHosp
rename D1665 HospNumStays
rename D1666 HospNumNights
rename D1669 HospCoverByIns
rename D1681 StayInLTC
rename D1682 LTCNumStays
rename D1683 LTCNumNights
rename D1684 LTCNumMonths
rename D1686 LTCCoverByIns
rename D1688 LTCOOPAmt
rename D1692 LTCOOPgt5000
rename D1689 LTCOOPgt10000
rename D1690 LTCOOPgt20000
rename D1691 LTCOOPgt50000
rename D1693 LTCOOPgt500
rename D1713 HadOutSurg
rename D1716 OutSurgCoverByIns
rename D1732 OutSurgOOPAmt
rename D1736 SgDenDocgt500
rename D1733 SgDenDocgt1000
rename D1734 SgDenDocgt5000
rename D1735 SgDenDocgt20000
rename D1737 SgDenDocgt200
rename D1698 DocVisNum
rename D1701 DocVisCoverByIns
rename D1728 DentistVisit
rename D1731 DentistCoverByIns
rename D1744 TakeRXDrugs
rename D1748 RXCoverByIns
rename D1749 RXOOPAmt
rename D1753 RXOOPgt10
rename D1750 RXOOPgt20
rename D1751 RXOOPgt100
rename D1752 RXOOPgt500
rename D1754 RXOOPgt5
rename D1760 HoMedVisit
rename D1762 HoMedCoverByIns
rename D1781 HoMedOOPAmt
rename D1782 HoMedOOPgt5000
rename D1783 HoMedOOPgt10000
rename D1784 HoMedOOPgt20000
rename D1785 HoMedOOPgt1000
rename D1786 HoMedOOPgt500
rename D1774 SpecFacVisit
rename D1805 RecdHelpWithBills
rename D1809 BillHelpAmt
rename D769 HealthStatus
rename D772 HealthChange
rename D781 HaveHighBP
rename D782 TakeRX4HighBP
rename D784 BPUnderControl
rename D788 HaveDiabetes
rename D789 TakeRX4DiabOral
rename D790 TakeRXInsulin
rename D793 DiabUnderControl
rename D801 HaveCancer
rename D806 HaveNewCancer
rename D818 HaveLungCond
rename D823 TakeRX4Lung
rename D826 LungCondLimitAct
rename D828 HaveHeartCond
rename D829 TakeRX4Heart
rename D834 RecentHeartAtk
rename D837 TakeRX4HeartAtk
rename D840 HaveAngina
rename D841 TakeRX4Angina
rename D842 AnginaLimitAct
rename D843 HaveCongHeartFail
rename D845 TakeRX4HeartFail
rename D848 HasHadStroke
rename D851 StrokeProblems
rename D856 TakeRX4Stroke
rename D858 RecentStroke
rename D861 HavePsychProb
rename D864 TakeRX4Depress
rename D866 HaveArthritis
rename D870 TakeRX4Arthritis
rename D871 ArthritisLimitAct
rename D878 FallenRecently
rename D879 NumFalls
rename D884 InjuryFall
rename D892 LostAnyUrine
rename D893 LostUrineDaysAmt
rename D894 LostUrineDaysgt5
rename D895 LostUrineDaysgt15
rename D900 VisionQuality
rename D907 UseHearingAid
rename D908 HearingQuality
rename D911 HaveFreqPain
rename D912 PainSeverity
rename D914 PainLimitAct
rename D919 HadFluShot
rename D920 HadCholTest
rename D926 HadMammo
rename D927 HadPapSmear
rename D929 HadProstateEx
rename D963 HaveAnkleSwell
rename D964 HaveShortBreath
rename D967 HaveDizziness
rename D968 HaveBackProb
rename D969 HaveHeadache
rename D972 HaveFatigue
rename D973 HaveCoughing
rename D1812 DaysInBed
rename D985 Depressed2Weeks
rename D240 InNursingHome
rename D506 NumResChildren
rename D210 Sex
rename D674 CoupleStatus
rename D636A MonthBorn
rename D638A YearBorn
rename D1834 DiffWalkBlocks
rename D1837 DiffJogMile
rename D1840 DiffWalk1Block
rename D1843 DiffSitting
rename D1846 DiffStanding
rename D1849 DiffStairs
rename D1852 Diff1Stair
rename D1855 DiffStooping
rename D1858 DiffReaching
rename D1861 DiffPushing
rename D1864 DiffCarrying
rename D1867 DiffPickDime
rename D1884 DiffDressing
rename D1887 GetHelpDress
rename D1871 DiffCrossRoom
rename D1874 UseDevCrossRoom
rename D1877 GetHelpCrossRoom
rename D1894 DiffBathing
rename D1897 GetHelpBathing
rename D1904 DiffEating
rename D1907 GetHelpEating
rename D1914 DiffWithBed
rename D1917 UseDevWithBed
rename D1920 GetHelpWithBed
rename D1927 DiffToilet
rename D1930 GetHelpToilet
rename D2012 DiffUsingMap
rename D2021 DiffCooking
rename D2023 NoCookBCHealth
rename D2024 GetHelpCooking
rename D2026 DiffShopping
rename D2028 NoShopBCHealth
rename D2029 GetHelpShopping
rename D2031 DiffPhoning
rename D2033 NoPhoneBCHealth
rename D2034 GetHelpPhoning
rename D2036 DiffTakingRX
rename D2038 NoRXBCHealth
rename D2039 GetHelpTakingRX
rename D2076 GetHelpHousework
rename D2099 DiffMoney
rename D2100 NoMoneyBCHealth
rename D2102 GetHelpMoney
rename D2626M1 EmpStatus
rename D3130 IsRetired
rename D934 DoesExercise
rename D943 CigsPerDay
rename D944 PacksPerDay
rename D950 DaysWeekDrink
rename D951 DrinksPerDay

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
label variable NumPrivPlans "Number of other insurance plans"
label variable Plan1PayRX "Does plan 1 help with prescriptions?"
label variable Plan1HowPurch "How plan 1 was purchased"
label variable Plan1PremPay "Pay all/some/none premiums on plan 1"
label variable Plan1PremAmt "Premiums paid for plan 1 amount"
label variable Plan1PremPer "Premiums paid period (2000 and before)"
label variable Plan2HowPurch "How plan 2 was purchased"
label variable Plan2PremPay "Pay all/some/none premiums on plan 2"
label variable Plan2PremAmt "Premiums paid for plan 2 amount"
label variable Plan2PremPer "Premiums paid period (2000 and before)"
label variable HaveLTCIns "Have long term care insurance?"
label variable LTCPremAmt "Premium for LTC insurance amount"
label variable LTCPremPer "Premium for LTC insurance period"
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
label variable LTCOOPgt500 "Hosp/LTC more than 500?"
label variable HadOutSurg "Had outpatient surgery?"
label variable OutSurgCoverByIns "How much of surgery covered by ins?"
label variable OutSurgOOPAmt "Out of pocket surgery costs amount"
label variable SgDenDocgt500 "Surg/dental/doc more than 500?"
label variable SgDenDocgt1000 "Surg/dental/doc more than 1000?"
label variable SgDenDocgt5000 "Surg/dental/doc more than 5000?"
label variable SgDenDocgt20000 "Surg/dental/doc more than 20000?"
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
label variable RecdHelpWithBills "Received help with paying med bills?"
label variable BillHelpAmt "Med bill help received amount"
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
summarize NumPrivPlans
local j = ceil(log(r(max))/log(10))
label values NumPrivPlans Value`j'
label values Plan1PayRX YesNo
label values Plan1HowPurch HowObtain
label values Plan1PremPay AllSomeNone
summarize Plan1PremAmt
local j = ceil(log(r(max))/log(10))
label values Plan1PremAmt Value`j'
label values Plan1PremPer Period3
label values Plan2HowPurch WherePurch
label values Plan2PremPay AllSomeNone
summarize Plan2PremAmt
local j = ceil(log(r(max))/log(10))
label values Plan2PremAmt Value`j'
label values Plan2PremPer Period2
label values HaveLTCIns YesNo
summarize LTCPremAmt
local j = ceil(log(r(max))/log(10))
label values LTCPremAmt Value`j'
label values LTCPremPer Period3
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
label values RecdHelpWithBills YesNo
summarize BillHelpAmt
local j = ceil(log(r(max))/log(10))
label values BillHelpAmt Value`j'
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

save ../Extracted/MergedCore95.dta, replace
