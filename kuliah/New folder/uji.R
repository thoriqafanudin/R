data_iva <- read.csv('iva.csv')
pretest = data_iva$pretest
postest = data_iva$postest
nama = data_iva$nama

library(plotly)

data <- data.frame(nama, pretest)

fig <- plot_ly(data, x=~nama, y=~pretest, type='scatter', mode='line')
fig
