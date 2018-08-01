clear all
set mem 200M
set more off
set maxvar 10000

clear all
infile using ../RawHRS/h98i_jH.dct
sort HHID FSUBHH
save ../Extracted/h98i_jH.dta, replace
clear all
infile using ../RawHRS/h98i_fH.dct
sort HHID FSUBHH
save ../Extracted/h98i_fH.dta, replace
sort HHID FSUBHH
merge m:1 HHID FSUBHH using ../Extracted/h98i_jH.dta, sorted
drop _merge

keep HHID FSUBHH FNETWRTH FHOME1 F2760X F2773X FHOME2 F2950X F2957X F5473X FHHINC F4704X F4712X F4798X F4723X F4734X
rename FSUBHH SUBHH
rename FNETWRTH TotalWealth
rename FHOME1 FirstHomeEqty
rename F2760X FirstHomeVal
rename F2773X FirstHomeMort
rename FHOME2 SecondHomeEqty
rename F2950X SecondHomeVal
rename F2957X SecondHomeMort
rename F5473X TrustsValue
rename FHHINC TotalIncome
rename F4704X RespUnemp
rename F4712X SpouseUnemp
rename F4798X Welfare
rename F4723X RespWorkComp
rename F4734X SpouseWorkComp

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

save ../Extracted/MergedImpute98.dta, replace
