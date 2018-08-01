replace RespUnemp = RespUnemp + RespWorkComp
replace SpouseUnemp = SpouseUnemp + SpouseWorkComp
drop SpouseWorkComp RespWorkComp
sort HHID SUBHH
merge 1:m HHID SUBHH using ../Extracted/MergedCore96.dta, sorted
drop _merge
gen Year = 1996
sort HHID PN
save ../Extracted/MainData96.dta, replace
