library(car)
install.packages('agricolae')
library(agricolae)

lokasi <- c(rep('A', 15), rep('B', 15), rep('C', 15))
zona <- c(rep('Pinggir', 5), rep('Tengah', 5), rep('Dalam', 5),
          rep('Pinggir', 5), rep('Tengah', 5), rep('Dalam', 5),
          rep('Pinggir', 5), rep('Tengah', 5), rep('Dalam', 5))

kerapatan <- c(15,18,21,14,17,23,26,19,18,21,25,13,12,45,13,
               23,13,34,21,20,21,10,9,13,16,17,15,16,10,12,
               16,29,30,19,20,12,11,15,25,16,12,21,21,20,20)

lokasi <- factor(lokasi)
zona <- factor(zona)

data <- data.frame(lokasi, zona, kerapatan)
data

# Mengurutkan
data$zona <- ordered(data$zona, levels=c('Pinggir', 'Tengah', 'Dalam'))

# Uji Homokedastisitas
leveneTest(kerapatan ~ lokasi*zona, data = data)

# Uji normalitas
# menggunakan saphiro test
model = lm(kerapatan ~ lokasi*zona, data)

# tanda(*): menampilkan apakah ada interaksi antara dua faktor
library(nortest)
shapiro.test(x)
# shapiro.test: kode untuk instruksi pemeriksaan normalitas data dengan uji shapiro
# berdistribusi normal jika nilai p>0.05 pada uji shapiro

qqPlot(data$kerapatan)

# qqplot: kode untuk menyusun Q-Q plot untuk mengetahui apakah data memenuhi asumsi atau tidak

# berdistribusi normal jika titik data berada diantara garis putus-putus pada QQ-plot

# Uji ANOVA 2 way
# Jika nilai p<0.05 untuk setiap factor utama
# berarti ada perbedaan yang signifikan.
# jika nilai p<0.05 untuk interaksi, uji lanjut dapat dilakukan

kerapatan.mod = aov(kerapatan ~ lokasi*zona, data = data)
summary(kerapatan.mod)

# summary: kode instruksi untuk menyusun rangkuman nilai hasil analisa data

# uji lanjut tukey
(HSD.test(kerapatan.mod, c('lokasi', 'zona'), unbalanced=FALSE))

# atau
TukeyHSD((kerapatan.mod))
help(HSD)

boxplot(kerapatan ~ lokasi*zona, data = data)
