data_iva <- read.csv('iva.csv')
pretest = data_iva$pretest
postest = data_iva$postest
nama = data_iva$nama

library(plotly)

data <- data.frame(nama, pretest, postest)

fig <- plot_ly(data, x=~nama, y=~pretest, name='pretest', type='scatter', mode='lines+markers') 
fig <- fig %>% add_trace(y=~postest, name='postest', mode='lines+markers') 
fig
