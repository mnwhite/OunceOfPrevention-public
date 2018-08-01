clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/X98CS_R.dct
sort HHID PN
save ../Extracted/X98CS_R.dta, replace
clear all
infile using ../RawHRS/X98B_R.dct
sort HHID PN
save ../Extracted/X98B_R.dta, replace
clear all
infile using ../RawHRS/X98E_R.dct
sort HHID PN
save ../Extracted/X98E_R.dta, replace
clear all
infile using ../RawHRS/X98R_R.dct
sort HHID PN
save ../Extracted/X98R_R.dta, replace
clear all
infile using ../RawHRS/X98PR_R.dct
sort HHID PN
save ../Extracted/X98PR_R.dta, replace
merge 1:1 HHID PN using ../Extracted/X98CS_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X98B_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X98E_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X98R_R.dta, sorted
drop _merge

keep HHID QSUBHH PN Q2560 Q2561 Q2562 Q2563 Q2572 Q2575 Q2579 Q2580 Q2602 Q2591 Q2592 Q2593 Q2595 Q2597 Q2598 Q2599 Q2600 Q2615 Q2611 Q2612 Q2613 Q2610 Q2664 Q2668 Q2669 Q2642 Q2651 Q1728 Q1729 Q1730 Q1735 Q1743 Q1744 Q1745 Q1746 Q1748 Q1749 Q1750 Q1751 Q1752 Q1753 Q1754 Q1755 Q1756 Q1785 Q1786 Q1787 Q1788 Q1789 Q1790 Q1791 Q1778 Q1779 Q1784 Q1792 Q1793 Q1794 Q1795 Q1796 Q1797 Q1798 Q1799 Q1800 Q1801 Q1804 Q1806 Q1811 Q1812 Q1813 Q1814 Q1815 Q1816 Q1808 Q1831 Q1835 Q1836M1 Q1129 Q1146 Q1156 Q1157 Q1162 Q1171 Q1176 Q1186 Q1216 Q1206 Q1207 Q1212 Q1239 Q1241 Q1852 Q1859 Q1881 Q1896 Q1911 Q1929 Q2010 Q2020 Q2030 Q2040 Q2084 Q490 Q488 Q496
rename QSUBHH SUBHH
rename Q2560 HaveMedicareA
rename Q2561 HaveMedicareB
rename Q2562 HadMedicaid
rename Q2563 HaveMedicaid
rename Q2572 HaveChampus
rename Q2575 MedicareByHMO
rename Q2579 HMOPremAmt
rename Q2580 HMOPremPer
rename Q2602 Plan1PayRX
rename Q2591 Plan1PremPay
rename Q2592 Plan1PremAmt
rename Q2593 Plan1PremPer
rename Q2595 Plan1Medigap
rename Q2597 Plan1IsHMO
rename Q2598 Plan1DocNetwork
rename Q2599 Plan1PayOutNtwk
rename Q2600 Plan1HowPayDoc
rename Q2615 Plan2PayRX
rename Q2611 Plan2PremPay
rename Q2612 Plan2PremAmt
rename Q2613 Plan2PremPer
rename Q2610 Plan2Medigap
rename Q2664 HaveLTCIns
rename Q2668 LTCPremAmt
rename Q2669 LTCPremPer
rename Q2642 EverWithoutIns
rename Q2651 NoHealthInsNow
rename Q1728 StayInHosp
rename Q1729 HospNumStays
rename Q1730 HospNumNights
rename Q1735 HospCoverByIns
rename Q1743 StayInLTC
rename Q1744 LTCNumStays
rename Q1745 LTCNumNights
rename Q1746 LTCNumMonths
rename Q1748 LTCCoverByIns
rename Q1749 LTCOOPAmt
rename Q1750 LTCOOPgt5000
rename Q1751 LTCOOPgt10000
rename Q1752 LTCOOPgt20000
rename Q1753 LTCOOPgt50000
rename Q1754 LTCOOPgt10000a
rename Q1755 LTCOOPgt5000a
rename Q1756 LTCOOPgt500
rename Q1785 SgDenDocgt500
rename Q1786 SgDenDocgt1000
rename Q1787 SgDenDocgt5000
rename Q1788 SgDenDocgt20000
rename Q1789 SgDenDocgt1000a
rename Q1790 SgDenDocgt500a
rename Q1791 SgDenDocgt200
rename Q1778 DocVisNum
rename Q1779 DocVisCoverByIns
rename Q1784 DocVisOOPAmt
rename Q1792 TakeRXDrugs
rename Q1793 RXCoverByIns
rename Q1794 RXOOPAmt
rename Q1795 RXOOPgt10
rename Q1796 RXOOPgt20
rename Q1797 RXOOPgt100
rename Q1798 RXOOPgt500
rename Q1799 RXOOPgt20a
rename Q1800 RXOOPgt10a
rename Q1801 RXOOPgt5
rename Q1804 HoMedVisit
rename Q1806 HoMedCoverByIns
rename Q1811 HoMedOOPAmt
rename Q1812 HoMedOOPgt5000
rename Q1813 HoMedOOPgt10000
rename Q1814 HoMedOOPgt20000
rename Q1815 HoMedOOPgt1000
rename Q1816 HoMedOOPgt500
rename Q1808 SpecFacVisit
rename Q1831 RecdHelpWithBills
rename Q1835 BillHelpAmt
rename Q1836M1 HowPayLargeBills
rename Q1129 HaveCancer
rename Q1146 HaveLungCond
rename Q1156 HaveHeartCond
rename Q1157 TakeRX4Heart
rename Q1162 RecentHeartAtk
rename Q1171 HaveCongHeartFail
rename Q1176 HasHadStroke
rename Q1186 RecentStroke
rename Q1216 HaveMemProb
rename Q1206 FallenRecently
rename Q1207 NumFalls
rename Q1212 InjuryFall
rename Q1239 HaveFreqPain
rename Q1241 PainSeverity
rename Q1852 GetHelpDress
rename Q1859 GetHelpCrossRoom
rename Q1881 GetHelpBathing
rename Q1896 GetHelpEating
rename Q1911 GetHelpWithBed
rename Q1929 GetHelpToilet
rename Q2010 GetHelpCooking
rename Q2020 GetHelpShopping
rename Q2030 GetHelpPhoning
rename Q2040 GetHelpTakingRX
rename Q2084 GetHelpMoney
rename Q490 DeathYear
rename Q488 DeathMonth
rename Q496 DeathExpected

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
label variable Plan1PremPay "Pay all/some/none premiums on plan 1"
label variable Plan1PremAmt "Premiums paid for plan 1 amount"
label variable Plan1PremPer "Premiums paid period (2000 and before)"
label variable Plan1Medigap "Plan 1 is Medigap (2000 and before)"
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
label variable SgDenDocgt500 "Surg/doc more than 500?"
label variable SgDenDocgt1000 "Surg/doc more than 1000?"
label variable SgDenDocgt5000 "Surg/doc more than 5000?"
label variable SgDenDocgt20000 "Surg/doc more than 20000?"
label variable SgDenDocgt1000a "Surg/doc more than 1000?"
label variable SgDenDocgt500a "Surg/doc more than 500?"
label variable SgDenDocgt200 "Surg/doc more than 200?"
label variable DocVisNum "Number other doctor consultations"
label variable DocVisCoverByIns "How much of doc visits covered by ins?"
label variable DocVisOOPAmt "Out of pocket doc visits amount"
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
label variable RecdHelpWithBills "Received help with paying med bills?"
label variable BillHelpAmt "Med bill help received amount"
label variable HowPayLargeBills "How pay for large medical bills?"
label variable HaveCancer "Have cancer?"
label variable HaveLungCond "Have lung condition?"
label variable HaveHeartCond "Have heart condition?"
label variable TakeRX4Heart "Taking medication for heart condition?"
label variable RecentHeartAtk "Had heart attack in past two years?"
label variable HaveCongHeartFail "Have congestive heart failure?"
label variable HasHadStroke "Has ever had a stroke?"
label variable RecentStroke "Had stroke in past two years?"
label variable HaveMemProb "Have memory problems?"
label variable FallenRecently "Has fallen recently"
label variable NumFalls "Number of times fallen"
label variable InjuryFall "Serious injury in any falls?"
label variable HaveFreqPain "Often have pain?"
label variable PainSeverity "Severity of pain"
label variable GetHelpDress "Ever get help getting dressed?"
label variable GetHelpCrossRoom "Ever get help crossing a room?"
label variable GetHelpBathing "Ever get help showering?"
label variable GetHelpEating "Ever get help eating?"
label variable GetHelpWithBed "Ever get help to get in bed?"
label variable GetHelpToilet "Ever get help using the toilet?"
label variable GetHelpCooking "Ever get help preparing a hot meal?"
label variable GetHelpShopping "Ever get help with groceries?"
label variable GetHelpPhoning "Ever get help making phone calls?"
label variable GetHelpTakingRX "Ever get help taking medications?"
label variable GetHelpMoney "Ever get help managing money?"
label variable DeathYear "Year of death"
label variable DeathMonth "Month of death"
label variable DeathExpected "Was the death expected?"

save ../Extracted/MergedExit98.dta, replace
