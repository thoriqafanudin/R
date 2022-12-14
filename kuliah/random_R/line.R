datacsv<-read.csv(file="C:/Users/Thoriq/Documents/BelajarR/kepadatan.csv")
x_kelurahan<-c(datacsv$NAMA.KELURAHAN[51:65])
y_perempuan<-c(datacsv$X35.39.Perempuan[51:65])
data<-data.frame(x_kelurahan,y_perempuan)
fig<-plot_ly(data,x=~x_kelurahan,y=~y_perempuan,type='scatter',mode='line')
fig<-fig%>%layout(title='PERSEBARAN PEREMPUAN UMUR 35-39 DI JAKARTA UTARA',
                  xaxis=list(title='KELURAHAN',
                             zeroline=TRUE),
                  yaxis=list(title='JUMLAH',
                             zeroline=TRUE))
fig
