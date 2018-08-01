clear

cd ..
cd Extracted

use MergedExit10.dta
keep HHID PN DeathYear
gen Year = 2010
keep if DeathYear >= 2008 & DeathYear <= 2010
gen HHIDPN = HHID + PN
drop HHID PN DeathYear
gen Health = 6
save ExitData10.dta, replace
clear

use MergedExit08.dta
keep HHID PN DeathYear
gen Year = 2008
keep if DeathYear >= 2006 & DeathYear <= 2008
gen HHIDPN = HHID + PN
drop HHID PN DeathYear
gen Health = 6
save ExitData08.dta, replace
clear

use MergedExit06.dta
keep HHID PN DeathYear
gen Year = 2006
keep if DeathYear >= 2004 & DeathYear <= 2006
gen HHIDPN = HHID + PN
drop HHID PN DeathYear
gen Health = 6
save ExitData06.dta, replace
clear

use MergedExit04.dta
keep HHID PN DeathYear
gen Year = 2004
keep if DeathYear >= 2002 & DeathYear <= 2004
gen HHIDPN = HHID + PN
drop HHID PN DeathYear
gen Health = 6
save ExitData04.dta, replace
clear

use MergedExit02.dta
keep HHID PN DeathYear
gen Year = 2002
keep if DeathYear >= 2000 & DeathYear <= 2002
gen HHIDPN = HHID + PN
drop HHID PN DeathYear
gen Health = 6
save ExitData02.dta, replace
clear

use MergedExit00.dta
keep HHID PN DeathYear
gen Year = 2000
keep if DeathYear >= 1998 & DeathYear <= 2000
gen HHIDPN = HHID + PN
drop HHID PN DeathYear
gen Health = 6
save ExitData00.dta, replace
clear

use MergedExit98.dta
keep HHID PN DeathYear
gen Year = 1998
keep if DeathYear >= 1996 & DeathYear <= 1998
gen HHIDPN = HHID + PN
drop HHID PN DeathYear
gen Health = 6
save ExitData98.dta, replace

append using ExitData00.dta
append using ExitData02.dta
append using ExitData04.dta
append using ExitData06.dta
append using ExitData08.dta
append using ExitData10.dta
save ExitSimpleData.dta, replace

cd ..
cd Scripts

