replace RespUnemp = RespUnemp + RespWorkComp
replace SpouseUnemp = SpouseUnemp + SpouseWorkComp
drop SpouseWorkComp RespWorkComp
sort HHID SUBHH
merge 1:m HHID SUBHH using ../Extracted/MergedCore98.dta, sorted
drop _merge
gen Year = 1998
sort HHID PN
save ../Extracted/MainData98.dta, replace
