data1 <- read.csv('iva_muhi.csv')
data2 <- read.csv('ivb_muhi.csv')
data3 <- read.csv('iva_panandut.csv')
data4 <- read.csv('ivb_panandut.csv')
data5 <- read.csv('iva_panarung.csv')
data6 <- read.csv('ivb_panarung.csv')

pretest <- c(data1$pretest, data2$pretest, data3$pretest, data4$pretest, data5$pretest, data6$pretest)
postest <- c(data1$postest, data2$postest, data3$postest, data4$postest, data5$postest, data6$postest)
pretest

summary(pretest)
summary(postest)

library(nortest)

lillie.test(pretest)
lillie.test(postest)

t.test(pretest, postest, mu=0)

