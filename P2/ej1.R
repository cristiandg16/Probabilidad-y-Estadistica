# A) Se clasifica como cuantitativa discreta.
# B)
edades<-c(22,22,23, 24, 25, 25, 26, 27, 28, 29, 29, 29, 29, 29, 31, 31, 32, 33, 34, 35, 35,35, 36, 38, 39, 39, 42, 42, 44 ,44, 45, 45, 45, 47, 48 ,52, 59, 66, 67, 69, 69)
# C) 
#c1)
tamaño_muestra<-length(edades)
tamaño_muestra#para imprimirlo
#c2)
Media<-mean(edades) #mean es media de edades
Media
Mediana<-median(edades)
Mediana
Moda<-mode(edades)
Moda
Cuartil<-quantile(edades)
Cuartil
#c3)
Rango<-(max(edades)-min(edades))
Rango
RangoInt<-IQR(edades)
RangoInt
DesviacionEst<-sd(edades)
DesviacionEst
Variancia<-var(edades)
Variancia
#c4)
Percentil10<-quantile(edades,.10)
Percentil10
Percentil50<-quantile(edades,.50)
Percentil50
#c5)
MinMaxCuar<-c(min(edades),max(edades),quantile((edades)))
MinMaxCuar
#c6)
boxplot(edades) #diagrama de caja
#c7)
stem(edades) #diagrama tallo y hoja
#c8)
hist(edades) #histograma

