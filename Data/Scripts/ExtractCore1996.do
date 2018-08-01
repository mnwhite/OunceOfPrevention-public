clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/H96CS_R.dct
sort HHID PN
save ../Extracted/H96CS_R.dta, replace
clear all
infile using ../RawHRS/H96B_R.dct
sort HHID PN
save ../Extracted/H96B_R.dta, replace
clear all
infile using ../RawHRS/H96E_R.dct
sort HHID PN
save ../Extracted/H96E_R.dta, replace
clear all
infile using ../RawHRS/H96G_R.dct
sort HHID PN
save ../Extracted/H96G_R.dta, replace
clear all
infile using ../RawHRS/H96R_R.dct
sort HHID PN
save ../Extracted/H96R_R.dta, replace
clear all
infile using ../RawHRS/H96PR_R.dct
sort HHID PN
save ../Extracted/H96PR_R.dta, replace
clear all
infile using ../RawHRS/H96A_R.dct
sort HHID PN
save ../Extracted/H96A_R.dta, replace
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H96CS_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H96B_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H96E_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H96G_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H96R_R.dta, sorted
drop _merge
sort HHID PN
merge 1:1 HHID PN using ../Extracted/H96PR_R.dta, sorted
drop _merge
sort HHID ESUBHH

keep HHID ESUBHH PN E5133 E5134 E5135 E5136 E5145 E5148 E5152 E5153 E5179_1 E5163_1 E5166_1 E5167_1 E5168_1 E5170_1 E5173011 E5173012 E5173013 E5174_1 E5175_1 E5176_1 E5177_1 E5179_2 E5163_2 E5166_2 E5167_2 E5168_2 E5170_2 E5173001 E5173002 E5173003 E5174_2 E5175_2 E5176_2 E5177_2 E5266 E5270 E5271 E5238 E5247 E1770 E1771 E1772 E1775 E1776 E1777 E1778 E1779 E1781 E1783 E1787 E1784 E1785 E1786 E1788 E1795 E1798 E1804 E1805 E1806 E1807 E1808 E1809 E1790 E1793 E1800 E1803 E1811 E1815 E1816 E1818 E1819 E1820 E1821 E1827 E1829 E1834 E1835 E1836 E1837 E1838 E1839 E1831 E1847 E1851 E769 E772 E781 E782 E784 E788 E789 E790 E793 E801 E806 E818 E823 E826 E828 E829 E834 E837 E840 E841 E842 E843 E845 E848 E851 E856 E858 E861 E864 E866 E870 E871 E878 E879 E884 E892 E893 E894 E895 E900 E907 E908 E911 E912 E914 E924 E925 E927 E928 E929 E967 E968 E969 E970 E971 E972 E973 E1854 E1006 E240 E506 E374 E375 E636 E638 E1841 E1842 E1843 E1844 E1845 E1858 E1861 E1864 E1867 E1870 E1873 E1876 E1879 E1882 E1885 E1888 E1891 E1908 E1911 E1895 E1898 E1901 E1918 E1921 E1928 E1931 E1938 E1941 E1944 E1951 E1954 E2027 E2036 E2038 E2039 E2041 E2043 E2044 E2046 E2048 E2049 E2051 E2053 E2054 E2091 E2093 E2094 E2096 E2611M1 E3039 E934 E943 E944 E950 E951
rename ESUBHH SUBHH
rename E5133 HaveMedicareA
rename E5134 HaveMedicareB
rename E5135 HadMedicaid
rename E5136 HaveMedicaid
rename E5145 HaveChampus
rename E5148 MedicareByHMO
rename E5152 HMOPremAmt
rename E5153 HMOPremPer
rename E5179_1 Plan1PayRX
rename E5163_1 Plan1HowPurch
rename E5166_1 Plan1PremPay
rename E5167_1 Plan1PremAmt
rename E5168_1 Plan1PremPer
rename E5170_1 Plan1Medigap
rename E5173011 Plan1WhoCoverA
rename E5173012 Plan1WhoCoverB
rename E5173013 Plan1WhoCoverC
rename E5174_1 Plan1IsHMO
rename E5175_1 Plan1DocNetwork
rename E5176_1 Plan1PayOutNtwk
rename E5177_1 Plan1HowPayDoc
rename E5179_2 Plan2PayRX
rename E5163_2 Plan2CurEmp
rename E5166_2 Plan2PremPay
rename E5167_2 Plan2PremAmt
rename E5168_2 Plan2PremPer
rename E5170_2 Plan2Medigap
rename E5173001 Plan2WhoCoverA
rename E5173002 Plan2WhoCoverB
rename E5173003 Plan2WhoCoverC
rename E5174_2 Plan2IsHMO
rename E5175_2 Plan2DocNetwork
rename E5176_2 Plan2PayOutNtwk
rename E5177_2 TotalInsPlans
rename E5266 HaveLTCIns
rename E5270 LTCPremAmt
rename E5271 LTCPremPer
rename E5238 EverWithoutIns
rename E5247 NoHealthInsNow
rename E1770 StayInHosp
rename E1771 HospNumStays
rename E1772 HospNumNights
rename E1775 HospCoverByIns
rename E1776 StayInLTC
rename E1777 LTCNumStays
rename E1778 LTCNumNights
rename E1779 LTCNumMonths
rename E1781 LTCCoverByIns
rename E1783 LTCOOPAmt
rename E1787 LTCOOPgt5000
rename E1784 LTCOOPgt10000
rename E1785 LTCOOPgt20000
rename E1786 LTCOOPgt50000
rename E1788 LTCOOPgt500
rename E1795 HadOutSurg
rename E1798 OutSurgCoverByIns
rename E1804 OutSurgOOPAmt
rename E1805 SgDenDocgt1000
rename E1806 SgDenDocgt5000
rename E1807 SgDenDocgt20000
rename E1808 SgDenDocgt500a
rename E1809 SgDenDocgt200
rename E1790 DocVisNum
rename E1793 DocVisCoverByIns
rename E1800 DentistVisit
rename E1803 DentistCoverByIns
rename E1811 TakeRXDrugs
rename E1815 RXCoverByIns
rename E1816 RXOOPAmt
rename E1818 RXOOPgt100
rename E1819 RXOOPgt500
rename E1820 RXOOPgt10a
rename E1821 RXOOPgt5
rename E1827 HoMedVisit
rename E1829 HoMedCoverByIns
rename E1834 HoMedOOPAmt
rename E1835 HoMedOOPgt5000
rename E1836 HoMedOOPgt10000
rename E1837 HoMedOOPgt20000
rename E1838 HoMedOOPgt1000
rename E1839 HoMedOOPgt500
rename E1831 SpecFacVisit
rename E1847 RecdHelpWithBills
rename E1851 BillHelpAmt
rename E769 HealthStatus
rename E772 HealthChange
rename E781 HaveHighBP
rename E782 TakeRX4HighBP
rename E784 BPUnderControl
rename E788 HaveDiabetes
rename E789 TakeRX4DiabOral
rename E790 TakeRXInsulin
rename E793 DiabUnderControl
rename E801 HaveCancer
rename E806 HaveNewCancer
rename E818 HaveLungCond
rename E823 TakeRX4Lung
rename E826 LungCondLimitAct
rename E828 HaveHeartCond
rename E829 TakeRX4Heart
rename E834 RecentHeartAtk
rename E837 TakeRX4HeartAtk
rename E840 HaveAngina
rename E841 TakeRX4Angina
rename E842 AnginaLimitAct
rename E843 HaveCongHeartFail
rename E845 TakeRX4HeartFail
rename E848 HasHadStroke
rename E851 StrokeProblems
rename E856 TakeRX4Stroke
rename E858 RecentStroke
rename E861 HavePsychProb
rename E864 TakeRX4Depress
rename E866 HaveArthritis
rename E870 TakeRX4Arthritis
rename E871 ArthritisLimitAct
rename E878 FallenRecently
rename E879 NumFalls
rename E884 InjuryFall
rename E892 LostAnyUrine
rename E893 LostUrineDaysAmt
rename E894 LostUrineDaysgt5
rename E895 LostUrineDaysgt15
rename E900 VisionQuality
rename E907 UseHearingAid
rename E908 HearingQuality
rename E911 HaveFreqPain
rename E912 PainSeverity
rename E914 PainLimitAct
rename E924 HadFluShot
rename E925 HadCholTest
rename E927 HadMammo
rename E928 HadPapSmear
rename E929 HadProstateEx
rename E967 HaveAnkleSwell
rename E968 HaveShortBreath
rename E969 HaveDizziness
rename E970 HaveBackProb
rename E971 HaveHeadache
rename E972 HaveFatigue
rename E973 HaveCoughing
rename E1854 DaysInBed
rename E1006 Depressed2Weeks
rename E240 InNursingHome
rename E506 NumResChildren
rename E374 Sex
rename E375 CoupleStatus
rename E636 MonthBorn
rename E638 YearBorn
rename E1841 TotalMedCostA
rename E1842 TotalMedCostB
rename E1843 TotalMedCostC
rename E1844 TotalMedCostD
rename E1845 TotalMedCostE
rename E1858 DiffWalkBlocks
rename E1861 DiffJogMile
rename E1864 DiffWalk1Block
rename E1867 DiffSitting
rename E1870 DiffStanding
rename E1873 DiffStairs
rename E1876 Diff1Stair
rename E1879 DiffStooping
rename E1882 DiffReaching
rename E1885 DiffPushing
rename E1888 DiffCarrying
rename E1891 DiffPickDime
rename E1908 DiffDressing
rename E1911 GetHelpDress
rename E1895 DiffCrossRoom
rename E1898 UseDevCrossRoom
rename E1901 GetHelpCrossRoom
rename E1918 DiffBathing
rename E1921 GetHelpBathing
rename E1928 DiffEating
rename E1931 GetHelpEating
rename E1938 DiffWithBed
rename E1941 UseDevWithBed
rename E1944 GetHelpWithBed
rename E1951 DiffToilet
rename E1954 GetHelpToilet
rename E2027 DiffUsingMap
rename E2036 DiffCooking
rename E2038 NoCookBCHealth
rename E2039 GetHelpCooking
rename E2041 DiffShopping
rename E2043 NoShopBCHealth
rename E2044 GetHelpShopping
rename E2046 DiffPhoning
rename E2048 NoPhoneBCHealth
rename E2049 GetHelpPhoning
rename E2051 DiffTakingRX
rename E2053 NoRXBCHealth
rename E2054 GetHelpTakingRX
rename E2091 GetHelpHousework
rename E2093 DiffMoney
rename E2094 NoMoneyBCHealth
rename E2096 GetHelpMoney
rename E2611M1 EmpStatus
rename E3039 IsRetired
rename E934 DoesExercise
rename E943 CigsPerDay
rename E944 PacksPerDay
rename E950 DaysWeekDrink
rename E951 DrinksPerDay

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
label variable Plan2CurEmp "Is plan 2 from current employer?"
label variable Plan2PremPay "Pay all/some/none premiums on plan 2"
label variable Plan2PremAmt "Premiums paid for plan 2 amount"
label variable Plan2PremPer "Premiums paid period (2000 and before)"
label variable Plan2Medigap "Plan 2 is Medigap (2000 and before)"
label variable Plan2WhoCoverA "Who else covered by plan 2 (first)?"
label variable Plan2WhoCoverB "Who else covered by plan 2 (second)?"
label variable Plan2WhoCoverC "Who else covered by plan 2 (third)?"
label variable Plan2IsHMO "Is plan 2 an HMO?"
label variable Plan2DocNetwork "plan 2 have a doctor network?"
label variable Plan2PayOutNtwk "plan 2 pay for outside network care?"
label variable TotalInsPlans "Total number of insurance plans"
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
label variable LTCOOPgt500 "Hosp/LTC more than 500?"
label variable HadOutSurg "Had outpatient surgery?"
label variable OutSurgCoverByIns "How much of surgery covered by ins?"
label variable OutSurgOOPAmt "Out of pocket surgery costs amount"
label variable SgDenDocgt1000 "Surg/dental/doc more than 1000?"
label variable SgDenDocgt5000 "Surg/dental/doc more than 5000?"
label variable SgDenDocgt20000 "Surg/dental/doc more than 20000?"
label variable SgDenDocgt500a "Surg/dental/doc more than 500?"
label variable SgDenDocgt200 "Surg/dental/doc more than 200?"
label variable DocVisNum "Number other doctor consultations"
label variable DocVisCoverByIns "How much of doc visits covered by ins?"
label variable DentistVisit "Seen dentist?"
label variable DentistCoverByIns "How much of dentist covered by ins?"
label variable TakeRXDrugs "Regularly take prescription drugs?"
label variable RXCoverByIns "How much of drugs covered by ins?"
label variable RXOOPAmt "Out of pocket drugs/month amount"
label variable RXOOPgt100 "Prescriptions more than 100?"
label variable RXOOPgt500 "Prescriptions more than 500?"
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
label values Plan2CurEmp YesNo
label values Plan2PremPay AllSomeNone
summarize Plan2PremAmt
local j = ceil(log(r(max))/log(10))
label values Plan2PremAmt Value`j'
label values Plan2PremPer Period2
label values Plan2Medigap YesNo
label values Plan2IsHMO YesNo
label values Plan2DocNetwork YesNo
label values Plan2PayOutNtwk YesNoRef
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
label values LTCOOPgt500 MoreLess1
label values HadOutSurg YesNo
label values OutSurgCoverByIns InsCoverage
summarize OutSurgOOPAmt
local j = ceil(log(r(max))/log(10))
label values OutSurgOOPAmt Value`j'
label values SgDenDocgt1000 MoreLess1
label values SgDenDocgt5000 MoreLess1
label values SgDenDocgt20000 MoreLess1
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
label values RXOOPgt100 MoreLess1
label values RXOOPgt500 MoreLess1
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

save ../Extracted/MergedCore96.dta, replace
