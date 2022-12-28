data_1 <- read.csv('iva_muhi.csv')

pretest = data_1$pretest
postest = data_1$postest
nama = data_iva$nama

library(plotly)

data <- data.frame(nama, pretest, postest)

fig <- plot_ly(data, x=~nama, y=~pretest, name='pretest', type='scatter', mode='lines+markers') 
fig <- fig %>% add_trace(y=~postest, name='postest', mode='lines+markers') 
fig
