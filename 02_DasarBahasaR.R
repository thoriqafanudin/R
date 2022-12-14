satu <- "Saya keren"
dua <- "Saya ahli programming"
class(satu)
help(class)
class(TRUE)
class(F)
class(98)
class(6.98)

# Vector
satu <- c(1,2,3,4,5)
dua <- c("satu", "dua", "tiga", "empat")
class(dua)
class(satu)
tiga <- c(1,2,3,"satu","dua")
class(tiga)
names(satu) <- c('A', 'B', 'C', 'D', 'E')
satu

alfabet1 <- c('A1', 'A2', 'A3', 'A4', 'A5')
names(satu) <- alfabet1
satu
satu['A2']

box <- c(TRUE, 23, 6.5, F)
box2 <- c(23, 5.6, "satu")
box3 <- c(TRUE, 23, 6.5, F, "satu")

angka <- c(10, 20, 30, 40, 50)
angka2 <- c(5, 6, 7, 8, 9)
angka + angka2
angka*angka2
angka/angka2
4*angka2

angka + c(2, 3, 4, 5, 6)
angka + 5
sum(angka)
min(angka)
max(angka)
mean(angka)
median(angka)
angka > 25

5 > 6
angka < angka2

# SLICING DAN INDEXING
angka[1:3]
angka[c(1, 3, 5)]

filter <- angka >=30
angka[filter]













