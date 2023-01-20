# Uji normalitas
data <- read.csv('nilai3.csv')
shapiro.test(data$pretest)

# Uji Homogenitas
library(car)
library(carData)

leveneTest(data$pretest, data$postest, center=mean)

# T-test
t.test(data$pretest, data$postest)
