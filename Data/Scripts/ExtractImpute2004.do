clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/h04i_hH.dct
sort HHID JSUBHH
save ../Extracted/h04i_hH.dta, replace
clear all
infile using ../RawHRS/h04i_qH.dct
sort HHID JSUBHH
save ../Extracted/h04i_qH.dta, replace
sort HHID JSUBHH
merge m:1 HHID JSUBHH using ../Extracted/h04i_hH.dta, sorted
drop _merge

keep HHID JSUBHH JNETWRTH JHOME1 JH020X JH032X JHOME2 JH166X JH171X JQ467X JHHINC JQ066X JQ070X JQ115X JQ410X JQ076X JQ080X
rename JSUBHH SUBHH
rename JNETWRTH TotalWealth
rename JHOME1 FirstHomeEqty
rename JH020X FirstHomeVal
rename JH032X FirstHomeMort
rename JHOME2 SecondHomeEqty
rename JH166X SecondHomeVal
rename JH171X SecondHomeMort
rename JQ467X TrustsValue
rename JHHINC TotalIncome
rename JQ066X RespUnemp
rename JQ070X SpouseUnemp
rename JQ115X Welfare
rename JQ410X Foodstamps
rename JQ076X RespWorkComp
rename JQ080X SpouseWorkComp

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
label variable Foodstamps "Household foodstamps (monthly bef 2004)"
label variable RespWorkComp "Respondents workers comp (not in 2006-8)"
label variable SpouseWorkComp "Spouses workers comp (not in 2006-8)"

save ../Extracted/MergedImpute04.dta, replace
