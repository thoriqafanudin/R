library(moments)
library(nortest)

data1 <- read.csv('iva_muhi.csv')
data2 <- read.csv('ivb_muhi.csv')
data3 <- read.csv('iva_panandut.csv')
data4 <- read.csv('ivb_panandut.csv')
data5 <- read.csv('iva_panarung.csv')
data6 <- read.csv('ivb_panarung.csv')

pretest <- c(data1$pretest, data2$pretest, data3$pretest,
             data4$pretest, data5$pretest, data6$pretest)
postest <- c(data1$postest, data2$postest, data3$postest,
             data4$postest, data5$postest, data6$postest)

shapiro.test(postest)

n <- length(postest)
mu <- mean(postest)
var <- var(postest)
std <- sqrt(var)
data <- rnorm(n, mu, std)
hist(data, xlab='X', ylab='Frekuensi', main='Histogram Nilai Post-Test')

hist(data, prob=TRUE, xlab="Nilai Siswa", ylab="Frekuensi",
     ylim=c(0, 0.065), main="Overlay Histogram dan Kurva Distribusi Normal")

curve(dnorm(x, mean=mu, sd=std), col="darkblue", lwd=1, add=TRUE)

t.test(pretest, postest, mu=mu)
