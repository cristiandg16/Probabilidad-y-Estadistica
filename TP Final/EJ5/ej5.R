

library(markovchain)
Estados<-c("1","2","3","4")
k=4
Rep=matrix(c(0,1,0,0,
             0,1/(k-1),(k-2)/(k-1),0,
             0,0,2/(k-1),(k-3)/(k-1),
             0,0,0,1),byrow=TRUE,nrow = k)
Rep
SH<-new("markovchain",states=Estados,transitionMatrix=Rep,name="Shuffle")

PI<-c(1,0,0,0) #Inicia con la primer canción
PI*(SH^6) #Comprobamos la probabilidad de que haya llegado a k.




