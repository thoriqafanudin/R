datacsv<-read.csv(file="C:/Users/Thoriq/Documents/BelajarR/kepadatan.csv")
x=datacsv$NAMA.KELURAHAN[7:12]
y=datacsv$LUAS.WILAYAH..KM2.[7:12]
data<-data.frame(x,y)
fig<-plot_ly(data,labels=~x,values=~y,type='pie')
fig<-fig%>%layout(title='LUAS WILAYAH KELURAHAN DI KECAMATAN GAMBIR')
fig
