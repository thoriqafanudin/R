data <- read.csv('daerah.csv')
wilayah <- data.frame(data$daerah, data$luas)
fig <- plot_ly(wilayah, labels=~data$daerah, values=~data$luas,
               type='pie')
fig
