sort HHID SUBHH
merge 1:m HHID SUBHH using ../Extracted/MergedCore95.dta, sorted
drop _merge
gen Year = 1995
sort HHID PN
save ../Extracted/MainData95.dta, replace
