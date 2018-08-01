clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/h96i_jH.dct
sort HHID ESUBHH
save ../Extracted/h96i_jH.dta, replace
clear all
infile using ../RawHRS/h96i_fH.dct
sort HHID ESUBHH
save ../Extracted/h96i_fH.dta, replace
sort HHID ESUBHH
merge m:1 HHID ESUBHH using ../Extracted/h96i_jH.dta, sorted
drop _merge

keep HHID ESUBHH EASSETS EHOME1 E2246X E2256X EHOME2 E2435X E2445X E4713X EHHINC E3944X E3952X E4038X E3963X E3974X
rename ESUBHH SUBHH
rename EASSETS TotalWealth
rename EHOME1 FirstHomeEqty
rename E2246X FirstHomeVal
rename E2256X FirstHomeMort
rename EHOME2 SecondHomeEqty
rename E2435X SecondHomeVal
rename E2445X SecondHomeMort
rename E4713X TrustsValue
rename EHHINC TotalIncome
rename E3944X RespUnemp
rename E3952X SpouseUnemp
rename E4038X Welfare
rename E3963X RespWorkComp
rename E3974X SpouseWorkComp

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
label variable RespUnemp "Respondents unemp benefits"
label variable SpouseUnemp "Spouses unemp benefits"
label variable Welfare "Household welfare"
label variable RespWorkComp "Respondents workers comp (not in 2006-8)"
label variable SpouseWorkComp "Spouses workers comp (not in 2006-8)"

save ../Extracted/MergedImpute96.dta, replace
