replace RespUnemp = RespUnemp + RespWorkComp
replace SpouseUnemp = SpouseUnemp + SpouseWorkComp
drop SpouseWorkComp RespWorkComp
sort HHID SUBHH
merge 1:m HHID SUBHH using ../Extracted/MergedCore00.dta, sorted
drop _merge
gen Year = 2000
sort HHID PN
save ../Extracted/MainData00.dta, replace
