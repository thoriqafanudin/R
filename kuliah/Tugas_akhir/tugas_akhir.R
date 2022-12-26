dataku <- read.csv('dataku.csv')
dataku$Nilai_tengah
dataku$Control_group_frequency
dataku$Experiment_group_frequency

data_cgf <- c(48.5, 48.5, 48.5, 48.5, 48.5, 48.5, 48.5, 48.5, 48.5,
          56.5, 56.5, 56.5, 56.5, 64.5, 64.5, 64.5, 64.5, 64.5,
          64.5, 64.5, 64.5, 64.5, 64.5, 72.5, 72.5, 72.5, 72.5,
          72.5, 80.5, 80.5, 80.5, 80.5, 80.5, 88.5, 88.5, 88.5)
summary(data_cgf)
var(data_cgf)

data_egf <- c(56.5, 56.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5,
              72.5, 72.5, 72.5, 72.5, 72.5, 72.5, 80.5, 80.5, 80.5,
              80.5, 80.5, 80.5, 80.5, 80.5, 80.5, 80.5, 80.5, 80.5,
              80.5, 80.5, 80.5, 80.5, 88.5, 88.5, 88.5, 88.5, 88.5,
              96.5, 96.5)

library(nortest)
lillie.test(data_cgf)
lillie.test(data_egf)
