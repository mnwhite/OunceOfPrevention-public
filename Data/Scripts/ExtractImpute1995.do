clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/a95i_jH.dct
sort HHID DSUBHH
save ../Extracted/a95i_jH.dta, replace
clear all
infile using ../RawHRS/a95i_fH.dct
sort HHID DSUBHH
save ../Extracted/a95i_fH.dta, replace
sort HHID DSUBHH
merge m:1 HHID DSUBHH using ../Extracted/a95i_jH.dta, sorted
drop _merge

keep HHID DSUBHH DNETWRTH DHOME1 D2246X D2256X DHOME2 D2435X D2445X D4712X D4642X D3929X
rename DSUBHH SUBHH
rename DNETWRTH TotalWealth
rename DHOME1 FirstHomeEqty
rename D2246X FirstHomeVal
rename D2256X FirstHomeMort
rename DHOME2 SecondHomeEqty
rename D2435X SecondHomeVal
rename D2445X SecondHomeMort
rename D4712X TrustsValue
rename D4642X TotalIncome
rename D3929X Welfare

label variable SUBHH "Sub-household ID number"
label variable TotalWealth "Total household wealth"
label variable FirstHomeEqty "Primary residence equity"
label variable FirstHomeVal "Primary residence value"
label variable FirstHomeMort "Primary residence mortgage"
label variable SecondHomeEqty "Secondary residence equity"
label variable SecondHomeVal "Secondary residence value"
label variable SecondHomeMort "Secondary residence mortgage"
label variable TrustsValue "Trusts (not included in wealth)"
label variable TotalIncome "Total household income"
label variable Welfare "Household welfare"

save ../Extracted/MergedImpute95.dta, replace
