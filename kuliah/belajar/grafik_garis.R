data <- read.csv('nilai3.csv')

# Memasukan ke variabel
nama <- data$nama
pretest <- data$pretest

library(plotly)

nilai <- data.frame(nama, pretest)
fig <- plot_ly(nilai, x=~nama, y=~pretest, name='Pretest',
               type='scatter', mode='line')
fig
