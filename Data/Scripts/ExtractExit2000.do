clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/X00CS_R.dct
sort HHID PN
save ../Extracted/X00CS_R.dta, replace
clear all
infile using ../RawHRS/X00B_R.dct
sort HHID PN
save ../Extracted/X00B_R.dta, replace
clear all
infile using ../RawHRS/X00E_R.dct
sort HHID PN
save ../Extracted/X00E_R.dta, replace
clear all
infile using ../RawHRS/X00R_R.dct
sort HHID PN
save ../Extracted/X00R_R.dta, replace
clear all
infile using ../RawHRS/X00PR_R.dct
sort HHID PN
save ../Extracted/X00PR_R.dta, replace
merge 1:1 HHID PN using ../Extracted/X00CS_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X00B_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X00E_R.dta, sorted
drop _merge
merge 1:1 HHID PN using ../Extracted/X00R_R.dta, sorted
drop _merge

keep HHID RSUBHH PN R2585 R2587 R2588 R2589 R2598 R2601 R2605 R2606 R2630 R2616 R2619 R2620 R2621 R2623 R2625 R2626 R2627 R2628 R2648 R2635 R2636 R2637 R2634 R2700 R2704 R2705 R2678 R2686 R1739 R1740 R1741 R1746 R1754 R1755 R1756 R1757 R1759 R1760 R1761 R1762 R1763 R1764 R1765 R1766 R1767 R1801 R1802 R1803 R1804 R1805 R1806 R1807 R1789 R1795 R1800 R1808 R1809 R1810 R1811 R1812 R1813 R1814 R1815 R1816 R1817 R1820 R1822 R1827 R1828 R1829 R1830 R1831 R1832 R1824 R1842 R1843 R1844 R1845 R1846 R1848 R1852 R1853M1 R1174 R1191 R1201 R1202 R1207 R1216 R1221 R1223 R1240 R1230 R1231 R1236 R1246 R1248 R1872 R1879 R1894 R1909 R1924 R1942 R2002 R2012 R2022 R2032 R2077 R522 R520 R530
rename RSUBHH SUBHH
rename R2585 HaveMedicareA
rename R2587 HaveMedicareB
rename R2588 HadMedicaid
rename R2589 HaveMedicaid
rename R2598 HaveChampus
rename R2601 MedicareByHMO
rename R2605 HMOPremAmt
rename R2606 HMOPremPer
rename R2630 Plan1PayRX
rename R2616 Plan1CurEmp
rename R2619 Plan1PremPay
rename R2620 Plan1PremAmt
rename R2621 Plan1PremPer
rename R2623 Plan1Medigap
rename R2625 Plan1IsHMO
rename R2626 Plan1DocNetwork
rename R2627 Plan1PayOutNtwk
rename R2628 Plan1HowPayDoc
rename R2648 Plan2PayRX
rename R2635 Plan2PremPay
rename R2636 Plan2PremAmt
rename R2637 Plan2PremPer
rename R2634 Plan2Medigap
rename R2700 HaveLTCIns
rename R2704 LTCPremAmt
rename R2705 LTCPremPer
rename R2678 EverWithoutIns
rename R2686 NoHealthInsNow
rename R1739 StayInHosp
rename R1740 HospNumStays
rename R1741 HospNumNights
rename R1746 HospCoverByIns
rename R1754 StayInLTC
rename R1755 LTCNumStays
rename R1756 LTCNumNights
rename R1757 LTCNumMonths
rename R1759 LTCCoverByIns
rename R1760 LTCOOPAmt
rename R1761 LTCOOPgt5000
rename R1762 LTCOOPgt10000
rename R1763 LTCOOPgt20000
rename R1764 LTCOOPgt50000
rename R1765 LTCOOPgt10000a
rename R1766 LTCOOPgt5000a
rename R1767 LTCOOPgt500
rename R1801 SgDenDocgt500
rename R1802 SgDenDocgt1000
rename R1803 SgDenDocgt5000
rename R1804 SgDenDocgt20000
rename R1805 SgDenDocgt1000a
rename R1806 SgDenDocgt500a
rename R1807 SgDenDocgt200
rename R1789 DocVisNum
rename R1795 DocVisCoverByIns
rename R1800 DocVisOOPAmt
rename R1808 TakeRXDrugs
rename R1809 RXCoverByIns
rename R1810 RXOOPAmt
rename R1811 RXOOPgt10
rename R1812 RXOOPgt20
rename R1813 RXOOPgt100
rename R1814 RXOOPgt500
rename R1815 RXOOPgt20a
rename R1816 RXOOPgt10a
rename R1817 RXOOPgt5
rename R1820 HoMedVisit
rename R1822 HoMedCoverByIns
rename R1827 HoMedOOPAmt
rename R1828 HoMedOOPgt5000
rename R1829 HoMedOOPgt10000
rename R1830 HoMedOOPgt20000
rename R1831 HoMedOOPgt1000
rename R1832 HoMedOOPgt500
rename R1824 SpecFacVisit
rename R1842 LTCAssigned
rename R1843 OutSurgAssigned
rename R1844 RXAssigned
rename R1845 HoMedAssigned
rename R1846 TotalOOPAssigned
rename R1848 RecdHelpWithBills
rename R1852 BillHelpAmt
rename R1853M1 HowPayLargeBills
rename R1174 HaveCancer
rename R1191 HaveLungCond
rename R1201 HaveHeartCond
rename R1202 TakeRX4Heart
rename R1207 RecentHeartAtk
rename R1216 HaveCongHeartFail
rename R1221 HasHadStroke
rename R1223 RecentStroke
rename R1240 HaveMemProb
rename R1230 FallenRecently
rename R1231 NumFalls
rename R1236 InjuryFall
rename R1246 HaveFreqPain
rename R1248 PainSeverity
rename R1872 GetHelpDress
rename R1879 GetHelpCrossRoom
rename R1894 GetHelpBathing
rename R1909 GetHelpEating
rename R1924 GetHelpWithBed
rename R1942 GetHelpToilet
rename R2002 GetHelpCooking
rename R2012 GetHelpShopping
rename R2022 GetHelpPhoning
rename R2032 GetHelpTakingRX
rename R2077 GetHelpMoney
rename R522 DeathYear
rename R520 DeathMonth
rename R530 DeathExpected

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
label variable Plan1CurEmp "Is plan 1 from current employer?"
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
label variable LTCAssigned "Assigned long term care  costs"
label variable OutSurgAssigned "Assigned outpatient surgery costs"
label variable RXAssigned "Assigned prescription costs"
label variable HoMedAssigned "Assigned home care costs"
label variable TotalOOPAssigned "Assigned total out of pocket costs"
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

save ../Extracted/MergedExit00.dta, replace
