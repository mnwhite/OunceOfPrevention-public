replace RespUnemp = RespUnemp + RespWorkComp
replace SpouseUnemp = SpouseUnemp + SpouseWorkComp
drop SpouseWorkComp RespWorkComp
sort HHID SUBHH
merge 1:m HHID SUBHH using ../Extracted/MergedCore02.dta, sorted
drop _merge
gen Year = 2002
save ../Extracted/MainData02.dta, replace
