# Save the example datasets as csv & put in the data folder
# Taken from http://web1.sph.emory.edu/dkleinb/logreg3.htm

library(foreign)
library(readr)

urls = c('infant' = 'http://web1.sph.emory.edu/dkleinb/allDatasets/datasets/infant.dta',
         'cancer' = 'http://web1.sph.emory.edu/dkleinb/allDatasets/datasets/cancer.dta',
         'mi' = 'http://web1.sph.emory.edu/dkleinb/allDatasets/datasets/mi.dta',
         'evans' = 'http://web1.sph.emory.edu/dkleinb/logregDatasets/evans.dta',
         'kneefr' = 'http://web1.sph.emory.edu/dkleinb/logregDatasets/kneefr.dta')

for (i in 1:length(urls)){
  write_csv(read.dta(urls[[i]]), paste0('./data/', names(urls)[[i]], '.csv'))
}