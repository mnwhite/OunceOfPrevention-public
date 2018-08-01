clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/h00i_jH.dct
sort HHID GSUBHH
save ../Extracted/h00i_jH.dta, replace
clear all
infile using ../RawHRS/h00i_fH.dct
sort HHID GSUBHH
save ../Extracted/h00i_fH.dta, replace
sort HHID GSUBHH
merge m:1 HHID GSUBHH using ../Extracted/h00i_jH.dta, sorted
drop _merge

keep HHID GSUBHH GNETWRTH GHOME1 G3078X G3091X GHOME2 G3268X G3275X G5833X GHHINC G5143X G5151X G5241X G5162X G5173X
rename GSUBHH SUBHH
rename GNETWRTH TotalWealth
rename GHOME1 FirstHomeEqty
rename G3078X FirstHomeVal
rename G3091X FirstHomeMort
rename GHOME2 SecondHomeEqty
rename G3268X SecondHomeVal
rename G3275X SecondHomeMort
rename G5833X TrustsValue
rename GHHINC TotalIncome
rename G5143X RespUnemp
rename G5151X SpouseUnemp
rename G5241X Welfare
rename G5162X RespWorkComp
rename G5173X SpouseWorkComp

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

save ../Extracted/MergedImpute00.dta, replace
