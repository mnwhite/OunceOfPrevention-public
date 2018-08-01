replace RespUnemp = RespUnemp + RespWorkComp
replace SpouseUnemp = SpouseUnemp + SpouseWorkComp
drop SpouseWorkComp RespWorkComp
sort HHID SUBHH
merge 1:m HHID SUBHH using ../Extracted/MergedCore04.dta, sorted
drop _merge
gen Year = 2004
save ../Extracted/MainData04.dta, replace
