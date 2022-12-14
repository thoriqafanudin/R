datacsv<-read.csv(file="C:/Users/Thoriq/Documents/BelajarR/kepadatan.csv")

# Perbandingan Jumlah Laki-laki dan Perempuan di Jakarta Pusat Usia 35-39 Tahun
data_perempuan=datacsv$X35.39.Perempuan[7:50]
data_lakilaki=datacsv$X35.39.Laki.Laki[7:50]
jumlah_perempuan=sum(data_perempuan)
jumlah_lakilaki=sum(data_lakilaki)
library(plotly)
x<-c("Laki-laki","Perempuan")
y<-c(jumlah_lakilaki,jumlah_perempuan)
pie_plot<-data.frame(x,y)
fig<-plot_ly(pie_plot,labels=~x,values=~y,type='pie')
fig<-fig%>%layout(title='PERBANDINGAN GENDER DI JAKARTA PUSAT USIA 35-39')
fig
