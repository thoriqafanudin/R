data<-read.csv(file="C:/Users/Thoriq/Documents/BelajarR/nilai.csv",head=TRUE)
data2=data$nilai
data2
library(plotly)

# Membuat scatter plot
fig<-plot_ly(x=~c(1,2,3,4,5,6,7,8,9,10,11),y=~c(25,16,9,4,1,0,1,4,9,16,25))
fig<-fig%>%layout(title='Fungsi Kuadrat',
                  xaxis=list(title='Sumbu X',
                             zeroline=TRUE,
                             range=c(0,12)),
                  yaxis=list(title='Sumbu Y',
                             zeroline=TRUE,
                             range=c(-1,30)))

# Menampilkan hasil visualisasi
fig

# Line plot dasar
# Memasukan data
x<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29)
y<-data2
data<-data.frame(x,y)

# Membuat line plot
diagram_garis<-plot_ly(data,x=~x,y=~y,type='scatter',mode='lines',color='red')
diagram_garis

# Membuat bar plot
siswa<-c("Laki-laki","Perempuan","Semua")
jumlah_siswa<-c(15,10,25)
data_siswa<-data.frame(siswa,jumlah_siswa)
diagram_bar<-plot_ly(data_siswa,x=~siswa,y=~jumlah_siswa,type='bar',color='blue',name='Murid Kelas 5')
diagram_bar<-diagram_bar%>%layout(title='MURID KELAS V',
                  xaxis=list(title='GENDER',
                             zeroline=TRUE,
                             range=c(0,3)),
                  yaxis=list(title='JUMLAH SISWA',
                             zeroline=TRUE,
                             range=c(-1,26)))
diagram_bar

# Membuat pie plot
gender<-c("Putra","Putri","Waria")
jumlah<-c(20,25,30)
pie_plot<-data.frame(gender,jumlah)
gambar<-plot_ly(pie_plot,labels=~gender,values=~jumlah,type='pie')
gambar

