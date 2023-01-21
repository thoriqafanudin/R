setwd('C:/Users/Thoriq/Documents/github/R/kuliah/belajar')
df <- read.csv('nilai3.csv')
shapiro.test(df$pretest)
shapiro.test(df$postest)
library(car)
leveneTest(df$pretest, df$postest, center=mean)

nilai <- c(df$pretest, df$postest, df$ujian)
tipe <- c(df$tipe1, df$tipe2, df$tipe3)
df3 = data.frame(nilai, tipe)
bartlett.test(nilai, tipe)
var(df$pretest)
var(df$postest)

t.test(df$pretest, df$postest)

library(readxl)
df <- read_excel('daerah.xlsx')
df$luas
Import('readxl')


anova = aov(nilai~tipe, data=df3)
summary(anova)
