clear all
set more off
set mem 800M
set maxvar 10000

do ExtractCore2010.do
do ExtractExit2010.do
do ExtractImpute2010.do
do MergeSets2010.do

do ExtractCore2008.do
do ExtractExit2008.do
do ExtractImpute2008.do
do MergeSets2008.do

do ExtractCore2006.do
do ExtractExit2006.do
do ExtractImpute2006.do
do MergeSets2006.do

do ExtractCore2004.do
do ExtractExit2004.do
do ExtractImpute2004.do
do MergeSets2004.do

do ExtractCore2002.do
do ExtractExit2002.do
do ExtractImpute2002.do
do MergeSets2002.do

do ExtractCore2000.do
do ExtractExit2000.do
do ExtractImpute2000.do
do MergeSets2000.do

do ExtractCore1998.do
do ExtractExit1998.do
do ExtractImpute1998.do
do MergeSets1998.do

do ExtractCore1996.do
do ExtractImpute1996.do
do MergeSets1996.do

do ExtractCore1995.do
do ExtractImpute1995.do
do MergeSets1995.do

clear all
