datacsv<-read.csv(file="C:/Users/Thoriq/Documents/BelajarR/kepadatan.csv")
datacsv
# Kepadatan Penduduk di Jakarta Pusat
x=datacsv$NAMA.KELURAHAN[7:50]
y=datacsv$KEPADATAN..JIWA.KM2.[7:50]
library(plotly)
fig<-plot_ly(x=~x,y=~y,type='scatter',color='red')
fig<-fig%>%layout(title='KEPADATAN PENDUDUK JAKARTA PUSAT',
                  xaxis=list(title='KELURAHAN',
                             zeroline=TRUE),
                  yaxis=list(title='KEPADATAN (JIWA/KM2)',
                             zeroline=TRUE))
fig
