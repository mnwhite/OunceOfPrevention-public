clear all
set mem 200M
set more off
set maxvar 10000

clear all
use ../RawHRS/incwlth10e1a.dta
rename msubhh subhh

keep hhid subhh pn h10atotb h10atoth h10ahous h10amort h10anethb h10ahoub h10amrtb h10atrst h10itot r10issdi r10iunwc s10issdi s10iunwc ih10welf ih10food
rename hhid HHID
rename subhh SUBHH
rename pn PN
rename h10atotb TotalWealth
rename h10atoth FirstHomeEqty
rename h10ahous FirstHomeVal
rename h10amort FirstHomeMort
rename h10anethb SecondHomeEqty
rename h10ahoub SecondHomeVal
rename h10amrtb SecondHomeMort
rename h10atrst TrustsValue
rename h10itot TotalIncome
rename r10issdi RespSSDI
rename r10iunwc RespUnemp
rename s10issdi SpouseSSDI
rename s10iunwc SpouseUnemp
rename ih10welf Welfare
rename ih10food Foodstamps

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

save ../Extracted/MergedImpute10.dta, replace
