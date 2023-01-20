data <- read.csv('nilai3.csv')
nama <- data$nama
nilai <- data$pretest
df <- data.frame(nama, nilai)
fig <- plot_ly(df, x=~nama, y=~nilai, type='bar')
fig
