cara<-c(0,1)
x<-seq(10,90,10)
lanzamientos<-c(x,10*x,100*x,10000)
frec_relativa<-vector(mode="numeric",length(lanzamientos))
puntos<-cbind(lanzamientos,frec_relativa)

for(i in 1:length(lanzamientos))
  puntos[i,2]<-(mean(sample(cara,puntos[i,1],replace=T))) #mean=media
puntos
plot(puntos,ylab="frecuencias relativas")
abline(0,5,0)
dev.off()