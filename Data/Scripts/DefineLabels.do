label define YesNo 1 "Yes" 5 "No" 8 "Don't Know" 9 "Refused", replace
label copy YesNo ActYesNo, replace
label define ActYesNo 6 "Can't Do" 7 "Don't Do", modify
label copy YesNo YesNoRX, replace
label define YesNoRX 7 "Medications known", modify
label copy YesNo YesNoRef, replace
label define YesNoRef 2 "Yes, with referral", modify
label copy YesNo YesNoExam, replace
label define YesNoExam 4 "Missing Organ", modify
label copy YesNo DispYesNo, replace
label define DispYesNo 2 "Maybe" 3 "Yes, disputes past" 4 "No, disputes past", modify
label define Value1 8 "Don't Know" 9 "Refused", replace
label define Value2 98 "Don't Know" 99 "Refused", replace
label define Value3 998 "Don't Know" 999 "Refused", replace
label define Value4 9998 "Don't Know" 9999 "Refused", replace
label define Value5 99998 "Don't Know" 99999 "Refused", replace
label define Value6 999998 "Don't Know" 999999 "Refused", replace
label define Value7 9999998 "Don't Know" 9999999 "Refused", replace
label define Value8 99999998 "Don't Know" 99999999 "Refused", replace
label define Value9 999999998 "Don't Know" 999999999 "Refused", replace
label define Period1 1 "Month" 2 "Quarter" 3 "Semi-annual" 4 "Year" 6 "Other" 8 "Don't Know" 9 "Refused", replace
label define AllSomeNone 1 "All" 2 "Some" 3 "None" 8 "Don't Know" 9 "Refused", replace
label define InsCoverage 1 "All" 2 "Most" 3 "Part" 5 "None" 7 "Costs not settled" 8 "Don't Know" 9 "Refused", replace
label define MoreLess1 1 "Less than" 3 "About that" 5 "More than" 8 "Don't Know" 9 "Refused", replace
label define Health 1 "Excellent" 2 "Very Good" 3 "Good" 4 "Fair" 5 "Poor" 6 "None" 8 "Don't Know" 9 "Refused", replace
label define BetWorse 1 "Better" 2 "About same" 3 "Worse" 8 "Don't Know" 9 "Refused", replace
label define UrineAmt 1 "A few drops" 2 "A small amount" 3 "A large amount" 8 "Don't Know" 9 "Refused", replace
label define Gender 1 "Male" 2 "Female", replace
label define Couple 1 "Married" 2 "Remarried" 3 "Partnered" 4 "Repartnered" 6 "Other", replace
label define HowOften 1 "More than weekly" 2 "Once a week" 3 "One to three times a month" 4 "Hardly ever" 7 "Daily" 8 "Don't Know" 9 "Refused", replace
label define PartDPay 1 "Deducted from SS" 2 "Pay directly" 3 "Both" 4 "Don't pay anything" 8 "Don't Know" 9 "Refused", replace
label define IsPrimary 1 "Medicare" 2 "Plan 1" 8 "Don't Know" 9 "Refused", replace
label define HowPayBig 1 "Savings/Earnings" 2 "Took out loan" 3 "Not yet paid" 4 "Making payments" 5 "Not paid by respondent" 7 "Other" 8 "Don't Know" 9 "Refused", replace
label define Strength 1 "Very strong" 2 "Somewhat strong" 3 "Somewhat weak" 4 "Very weak" 8 "Don't Know" 9 "Refused", replace
label define HowOftenB 1 "Often" 2 "Sometimes" 3 "Rarely" 4 "Never" 8 "Don't Know" 9 "Refused", replace
label define WherePurch 1 "Insurance company" 2 "Respondent's union" 3 "Spouse's union" 4 "Group" 5 "Ex or dead spouse's emp/union" 7 "Other" 8 "Don't Know" 9 "Refused", replace
label define HowObtain 1 "Resp's cur emp" 2 "Resp's fmr emp" 3 "Resp's union" 4 "Spouse's cur emp" 5 "Spouse's fmr emp" 6 "Spouse's union" 7 "Other" 8 "Don't Know" 9 "Refused", replace
label define Period2 1 "Year" 2 "Quarter" 3 "2 months" 4 "Month" 6 "2 weeks" 5 "Week" 7 "Half year" 8 "Half month" 97 "Other" 98 "Don't know" 99 "Refused"
label define DocPay 1 "Percent" 2 "Dollar amt / copay" 3 "Doesn't pay" 4 "Deductible (with copay)" 7 "Other" 8 "Don't know" 9 "Refused"
label define Period3 1 "Month" 2 "Quarter" 3 "Year" 4 "Other"