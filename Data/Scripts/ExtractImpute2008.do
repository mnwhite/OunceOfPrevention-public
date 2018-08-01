clear all
set mem 200M
set more off
set maxvar 10000

clear all
use ../RawHRS/incwlth08e1a.dta
rename lsubhh subhh

keep hhid subhh pn h9atotb h9atoth h9ahous h9amort h9anethb h9ahoub h9amrtb h9atrst h9itot r9issdi r9iunwc s9issdi s9iunwc ih9welf ih9food
rename hhid HHID
rename subhh SUBHH
rename pn PN
rename h9atotb TotalWealth
rename h9atoth FirstHomeEqty
rename h9ahous FirstHomeVal
rename h9amort FirstHomeMort
rename h9anethb SecondHomeEqty
rename h9ahoub SecondHomeVal
rename h9amrtb SecondHomeMort
rename h9atrst TrustsValue
rename h9itot TotalIncome
rename r9issdi RespSSDI
rename r9iunwc RespUnemp
rename s9issdi SpouseSSDI
rename s9iunwc SpouseUnemp
rename ih9welf Welfare
rename ih9food Foodstamps

label variable HHID "Household ID number (original)"
label variable SUBHH "Sub-household ID number"
label variable PN "Person number"
label variable TotalWealth "Total household wealth"
label variable FirstHomeEqty "Primary residence equity"
label variable FirstHomeVal "Primary residence value"
label variable FirstHomeMort "Primary residence mortgage"
label variable SecondHomeEqty "Secondary residence equity"
label variable SecondHomeVal "Secondary residence value"
label variable SecondHomeMort "Secondary residence mortgage"
label variable TrustsValue "Trusts (not included in wealth)"
label variable TotalIncome "Total household income"
label variable RespSSDI "Respondents SSDI benefits"
label variable RespUnemp "Respondents unemp benefits"
label variable SpouseSSDI "Spouses SSDI benefits"
label variable SpouseUnemp "Spouses unemp benefits"
label variable Welfare "Household welfare"
label variable Foodstamps "Household foodstamps (monthly bef 2004)"

save ../Extracted/MergedImpute08.dta, replace
