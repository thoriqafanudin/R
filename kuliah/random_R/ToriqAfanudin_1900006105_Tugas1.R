data<-read.csv(file="C:/Users/Thoriq/Documents/Belajar R/nilai.csv",head=TRUE)
data
str(data)
summary(data)
mean(data$nilai)
median(data$nilai)
range(data$nilai)
diff(range(data$nilai))
var(data$nilai)
sqrt(var(data$nilai))
sd(data$nilai)
