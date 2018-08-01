clear all
set mem 200M
set more off
set maxvar 10000

clear all
use ../RawHRS/incwlth06f2a.dta
rename ksubhh subhh

keep hhid subhh pn h8atotb h8atoth h8ahous h8amort h8anethb h8ahoub h8amrtb h8atrst h8itot r8issdi r8iunwc s8issdi s8iunwc ih8welf ih8food
rename hhid HHID
rename subhh SUBHH
rename pn PN
rename h8atotb TotalWealth
rename h8atoth FirstHomeEqty
rename h8ahous FirstHomeVal
rename h8amort FirstHomeMort
rename h8anethb SecondHomeEqty
rename h8ahoub SecondHomeVal
rename h8amrtb SecondHomeMort
rename h8atrst TrustsValue
rename h8itot TotalIncome
rename r8issdi RespSSDI
rename r8iunwc RespUnemp
rename s8issdi SpouseSSDI
rename s8iunwc SpouseUnemp
rename ih8welf Welfare
rename ih8food Foodstamps

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

save ../Extracted/MergedImpute06.dta, replace
