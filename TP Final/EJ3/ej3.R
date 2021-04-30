

library(markovchain)
Estados<-c("S","T","M","A","R")
Estados<-c("1","2","3","4","5")
Matriz<-matrix(c(0.84,0.11,0.01,0.04,0,
                 0.03,0.8,0.04,0.1,0.03,
                 0.01,0.15,0.7,0.07,0.07,
                 0.03,0.19,0.02,0.75,0.01,
                 0.03,0.09,0.05,0,0.83),byrow = TRUE,nrow = 5)
Matriz
mc<-new("markovchain",states = Estados,transitionMatrix = Matriz,name="Delfines")
summary(mc)
period(mc)

plot(mc,main="Grafo asociado a la cadena de markov")

#item B.

steadyStates(mc)

#item C.

Simulacion<-rmarkovchain(mc,n=100,t0=sample(Estados,"1",prob=c(1/5,1/5,1/5,1/5,1/5)))

plot(x=1:100,y=Simulacion,xlim=c(1,100),ylim=c(1,5),type = "b",main = "Simulación del Comportamiento",xaxt="n",yaxt="n",ylab="Actividad",xlab="Trayecto")
axis(1,at=seq(0,100,by=1))
axis(2,at=seq(1,5,by=1),labels=c("S","T","M","A","R"))


plot(sim,type = "l")
sim
sd<-table(sim)
plot(sd)
plot(sd,ylim=c("S","T","M","A","R"),xlim=c(1,100),ylab="Comportamiento",xlab="Tiempo")
