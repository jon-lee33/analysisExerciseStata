import delimited "H:\Data analysis\STATA\Baseline_Interviewer
save "H:\Data analysis\STATA\Baseline.dta"
import delimited "H:\Data analysis\STATA\HIV testing med history_6 month visits_NEW.csv", clear 
save "H:\Data analysis\STATA\hiv.dta"
import excel "H:\Data analysis\STATA\Baseline_Lab data_NE
W.xls", sheet("Sheet1") firstrow
save "H:\Data analysis\STATA\labs.dta"

use baseline
duplicates report
duplicates drop
drop in 408
save "H:\Data analysis\STATA\Baseline.dta"

// Merge baseline with screening
merge 1:m participantid using screening
save "H:\Data analysis\STATA\BaselineScreen.dta"

// merge baseline and screening with labs
rename _merge _merged1
rename pid participantid
label variable pid "participantid"
merge 1:m participantid using labs
save "H:\Data analysis\STATA\BaselineScreenLabs.dta"

// Create variable "visit code" and set Baseline, Lab, and Screening to baseline visits "0"
gen visitcode = 0
label variable visitcode "Visit Code"

// Rename variables using do file


// Create new variable "scrndate" and format as date


//Create variable combining participantid and visit code


// Merge follow up visits


/********************** Analysis ********************************
Exploratory data analysis (EDA)
Proportion ever linked to HIV care among those testing HIV-positive at baseline (HIV care variable=hivdr)? 
Denominator*/





































