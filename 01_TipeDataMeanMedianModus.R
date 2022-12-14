# Penghasilan satu kecamatan
penghasilan <- rnorm(1000, 3000000, 250000)
head(penghasilan)
tail(penghasilan)
penghasilan
hist(penghasilan)

# Memasukan 1 orang, dengan penghasilan 7 juta
baru <- 7e+07
penghasilan_baru <- append(penghasilan, baru)
tail(penghasilan_baru)

median(penghasilan)
median(penghasilan_baru)

mean(penghasilan)
mean(penghasilan_baru)
