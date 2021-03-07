# Notes from Logistic Regression: A Self Learning Text
Just a place to put notes as i work through the [logistic regression book](https://www.amazon.co.uk/Logistic-Regression-Self-Learning-Statistics-Biology/dp/1441917411/ref=sr_1_1?dchild=1&keywords=logistic+regression+a+self&qid=1615129880&s=books&sr=1-1).

I'm going to be dipping in & out of certain chapters rather than running though the book from start to finish so these could be a bit patchy - use at your own risk!

## Data dictionary

All the datasets used in the book are publically available [here](http://web1.sph.emory.edu/dkleinb/logreg3.htm):

* `evans.csv` is data from a cohort study of 609 white males from Evans County. Participants were followed for 7 years to see if they developed CHD (outcome variable):

| var | def |
| --- | --- |
| id | Unique person ID|
| chd | Does the person have CHD? 1 = yes, 0 = no |
| cat | Does the person have high catecholamine? 1 = yes, 0 = no |
| age | Person age in years |
| chl | Level of cholesterol (continuous) |
| smk | Has the person ever smoked? 1 = yes, 0 = no |
| ecg | Does the person have an abnormal ECG reading? 1 = yes, 0 = no |
| dbp | Diastolic blood pressure |
| sbp | Systolic blood pressure |
| hpt | Does the person have high blood pressure? defined as `sdp >= 160` or `dbp >= 95`. 1 = yes, 0 = no|
| ch | Interaction term - `cat * hpt` |
| cc | Interaction term - `car * chl` |