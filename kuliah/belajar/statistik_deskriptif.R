setwd('C:/Users/Thoriq/Documents/github/R/kuliah/belajar')
data <- read.csv('nilai.csv')
data
data$UTS
summary(data$UTS)
uts <- data$UTS
summary(uts)

# variansi
var(uts)

# Standar deviasi
sqrt(var(uts))

