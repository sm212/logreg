Unconditional logistic regression
=================================

``` r
library(readr)
library(ggplot2)

evans = read_csv('./data/evans.csv')
```

Some theory
===========

At a very high level, here’s how all of modeling works. First of all you
get some data (either from experiments or observational data) which
contains info on an *outcome variable of interest*, *D*, and info on
*other factors which may influence the outcome* *X*<sub>*i*</sub>. Then
you want to estimate the probability of the outcome, given the factors
*P*(*D*\|*X*<sub>*i*</sub>). All what modeling does is write down some
mathematical model for the probability:

*P*(*D*\|*X*<sub>*i*</sub>) = *f*(*X*<sub>*i*</sub>)

Logistic regression is when
*f*(*X*<sub>*i*</sub>) = exp ( − *β*<sub>*i*</sub>*X*<sub>*i*</sub>).
That’s the right hand side sorted, what about the left hand? The left
hand depends on the data structure, and there’s 2 very important
situations to look at:

Cohort studies
--------------

This is the situation logistic regression was made for. The idea of a
cohort study is to get a bunch of people, measure all the
*X*<sub>*i*</sub> at the start of the study (lets write it at
*X*<sub>*i*</sub><sup>*t* = 0</sup>), then follow up with them some time
later at *t* = 1 to see if they developed the outcome you’re trying to
measure. In this situation the model is

*P*(*D*<sup>*t* = 1</sup>\|*X*<sub>*i*</sub><sup>*t* = 0</sup>) = *f*(*X*<sub>*i*</sub><sup>*t* = 0</sup>)
