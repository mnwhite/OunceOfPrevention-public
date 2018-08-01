clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/h02i_hH.dct
sort HHID HSUBHH
save ../Extracted/h02i_hH.dta, replace
clear all
infile using ../RawHRS/h02i_qH.dct
sort HHID HSUBHH
save ../Extracted/h02i_qH.dta, replace
sort HHID HSUBHH
merge m:1 HHID HSUBHH using ../Extracted/h02i_hH.dta, sorted
drop _merge

keep HHID HSUBHH HNETWRTH HHOME1 HH020X HH032X HHOME2 HH166X HH171X HQ467X HHHINC HQ066X HQ070X HQ115X HQ410X HQ076X HQ080X
rename HSUBHH SUBHH
rename HNETWRTH TotalWealth
rename HHOME1 FirstHomeEqty
rename HH020X FirstHomeVal
rename HH032X FirstHomeMort
rename HHOME2 SecondHomeEqty
rename HH166X SecondHomeVal
rename HH171X SecondHomeMort
rename HQ467X TrustsValue
rename HHHINC TotalIncome
rename HQ066X RespUnemp
rename HQ070X SpouseUnemp
rename HQ115X Welfare
rename HQ410X Foodstamps
rename HQ076X RespWorkComp
rename HQ080X SpouseWorkComp

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

save ../Extracted/MergedImpute02.dta, replace
