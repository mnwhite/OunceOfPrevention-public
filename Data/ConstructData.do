* This script constructs data files used by the structural estimation, from raw
* HRS data and dictionary files to txt files that are read in by the Python code.

capture log close
clear all
cd Scripts

do ExtractAll.do
do MergeMain.do
do MergeExit.do
do MakeIncomeProfiles.do
do MakeHealthData.do
do MakeEstimationData.do
do RunInsuranceRegressions.do

cd ..
cd Extracted

use EstimationData.dta
outsheet using ../EstimationData.txt, replace
clear

use IncomeProfiles.dta
outsheet using ../IncomeProfiles.txt, replace
clear

cd ..
