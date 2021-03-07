# Notes from Logistic Regression: A Self Learning Text
Just a place to put notes as i work through the [logistic regression book](https://www.amazon.co.uk/Logistic-Regression-Self-Learning-Statistics-Biology/dp/1441917411/ref=sr_1_1?dchild=1&keywords=logistic+regression+a+self&qid=1615129880&s=books&sr=1-1).

I'm going to be dipping in & out of certain chapters rather than running though the book from start to finish so these could be a bit patchy - use at your own risk!

## Data dictionary

All the datasets used in the book are publically available [here](http://web1.sph.emory.edu/dkleinb/logreg3.htm):

* `evans.csv` is data from a cohort study of 609 white males from Evans County. Participants were followed for 7 years to see if they developed CHD (outcome variable). To be used for standard logistic regression:

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

* `mi.csv` is data from a case-control study of 117 subjects in 39 matched strata. Each stratum contains 3 subjects, 1 with mycardial infarction & 2 controls matched on age, race, sex, and hospital status. To be used for conditional logistic regression:

| var | def |
| --- | --- |
| match | Strata ID |
| person | Unique person ID |
| mi | Does the person have MI? 1 = yes, 0 = no |
| smk | Is the person currently smoking? 1 = yes, 0 = no |
| sbp | Systolic blood pressure |
| ecg | Does the person have an abnormal ECG reading? 1 = yes, 0 = no |

* `cancer.csv` is data from the Hill et al (1995) study on cancer survival. It has data on 288 women diagnosed with endometrial cancer, and the outcome variable (grade) has 3 levels. To be used for ordinal & polytomous logistic regression:

| var | def |
| --- | --- |
| id | Unique person ID |
| grade | Tumour grade. Ordinal with 3 levels -  Well differentiated (0), moderately differentiated (1), and poorly differentiated (2) |
| race | Is the person black? 1 = yes, 0 = no |
| estrogen | Has the person ever used estrogen? 1 = yes, 0 = no |
| subtype | Type of tumour. Adenocarcinoma (0), Adenosquamous (1), or Other (2) |
| age | Age range of the person. 1 = 65-79 years old, 0 = 50-64 years old |
| smk | Is the person currently smoking? 1 = yes, 0 = no |

* `infant.csv` is data from the Cannon et al (2001) study on a health intervention in Brazil. It has data on 168 infants, measured once a month. Not every infant was measured at every possible month - some were measured 5 times, others were measured 9 times. All in there's 1,458 observations, with complete data on 138 infants. The outcome is if the infants weight / height is more than 1 SDs below the average. To be used for correlated & GEE modelling:

| var | def |
| --- | --- |
| idno | Unique person ID |
| month | Month of measurment (1 -> 9) |
| outcome | Is the z score of the infants weight / height less than -1? 1 = yes, 0 = no |
| birthwgt | Birth weight in grams |
| gender | Infant gender. 1 = male, 2 = female |
| diarrhea | Did the infant have diarrhea at any point in the month? 1 = yes, 0 = no |

* `kneefr.csv` is data from Tigges et al (1999) looking at 348 patients, 45 of which have had a knee fracture. The study was looking to see if info on the patient could be used to predict if the person needs an xray. To be used for the chapters on screening and ROC curves:

| var | def |
| --- | --- |
| fracture | Does the person have a knee fracture? 1 = yes, 0 = no |
| flex | Can the person flex their knee? 1 = yes, 0 = no |
| weight | Can the person put weight on their knee? 1 = yes, 0 = no |
| agecat | Is the person aged 55+? 1 = yes, 0 = no |
| head | Is there damage to the knee head? 1 = yes, 0 = no |
| patellar | Is there damage to the patellar? 1 = yes, 0 = no |