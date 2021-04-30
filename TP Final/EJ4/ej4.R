
library(markovchain)
Estados<-c("A","B","C","D","E","F")
Matriz1<-matrix(c(0,1,0,0,0,0,
                  0.25,0,0.25,0.25,0.25,0,
                  0,0.25,0,0.25,0.25,0.25,
                  0,0.25,0.25,0,0.25,0.25,
                  0,1/3,1/3,1/3,0,0,
                  0,0,0.5,0.5,0,0),byrow=TRUE,nrow=6)
Matriz1
rw<-new("markovchain",states = Estados,transitionMatrix = Matriz1,name="Caminata")
Simulacion50<-rmarkovchain(rw,n=50,sample(Estados,"1",prob = c(1/6,1/6,1/6,1/6,1/6,1/6)))
Simulacion50


plot(x=1:10,y=Simulacion50,xlim=c(1,10),ylim=c(1,6),type = "b",main = "Simulación de la caminata aleatoria",xaxt="n",yaxt="n",ylab="Estados",xlab="Simulación")
axis(1,at=seq(0,10,by=1))
axis(2,at=seq(1,6,by=1),labels=c("A","B","C","D","E","F"))


Rep10<-replicate(10,rmarkovchain(rw,n=50,sample(Estados,1,prob = c(1/6,1/6,1/6,1/6,1/6,1/6))))
Rep10

steadyStates(rw)

#4 simulaciones terminaron en el vertice C.

steadyStates(rw) #Probabilidad a largo plazo.
pi<-c(1/6,1/6,1/6,1/6,1/6,1/6) #Distribuciones iniciales.
pi*(rw^10)  #Probabilidad en 10 pasos.


summary(rw)
