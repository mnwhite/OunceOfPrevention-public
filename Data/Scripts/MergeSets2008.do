replace Foodstamps = 0 if Foodstamps == .
replace Welfare = 0 if Welfare == .
replace SpouseSSDI = 0 if SpouseSSDI == .
replace SpouseUnemp = 0 if SpouseUnemp == .
sort HHID PN
merge 1:1 HHID PN using ../Extracted/MergedCore08.dta, sorted
drop _merge
gen Year = 2008
save ../Extracted/MainData08.dta, replace
