# NormalitasLinearitasHomogenitas
nilai<-read.csv("C:/Users/Thoriq/Documents/BelajarR/02_Data/nilai3.csv")
x=nilai$UTS
y=nilai$UAS
installed.packages("moments")
library(moments)
stem(x)
par(mfrow=c(1,3))
# PositifSkew
hist(x)               # MembuatHistogram
skewness(x)           # MembuatNilaiSkewness
qqnorm(x)             # Membuatqqplot
qqline(x)
library(nortest)
shapiro.test(x)
lillie.test(x)
sf.test(x)            # JarangDipakai
ad.test(x)
install.packages("lmtest")
library(lmtest)
resettest(y~x)
harvtest(x~y)

library(car)
library(carData)
leveneTest(y,x,center=mean)
