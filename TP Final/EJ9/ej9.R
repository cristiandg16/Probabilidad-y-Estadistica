
library(markovchain)
k<-5
Estados<-c("0","1","2","3","4","5")
FuncProb<-function(i,j,k){
  dbinom(j,k,i/k)
}

WF<-matrix(c(FuncProb(0,0,5),FuncProb(0,1,5),FuncProb(0,2,5),FuncProb(0,3,5),FuncProb(0,4,5),FuncProb(0,5,5),
             FuncProb(1,0,5),FuncProb(1,1,5),FuncProb(1,2,5),FuncProb(1,3,5),FuncProb(1,4,5),FuncProb(1,5,5),
             FuncProb(2,0,5),FuncProb(2,1,5),FuncProb(2,2,5),FuncProb(2,3,5),FuncProb(2,4,5),FuncProb(2,5,5),
             FuncProb(3,0,5),FuncProb(3,1,5),FuncProb(3,2,5),FuncProb(3,3,5),FuncProb(3,4,5),FuncProb(3,5,5),
             FuncProb(4,0,5),FuncProb(4,1,5),FuncProb(4,2,5),FuncProb(4,3,5),FuncProb(4,4,5),FuncProb(4,5,5),
             FuncProb(5,0,5),FuncProb(5,1,5),FuncProb(5,2,5),FuncProb(5,3,5),FuncProb(5,4,5),FuncProb(5,5,5)),
           byrow=TRUE,nrow=6)
WF
WF<-new("markovchain",states=Estados,transitionMatrix=WF,name="Wright-Fisher")
plot(WF,main="Grafo asociado a la cadena de markov")
Simulacion<-rmarkovchain(WF,n=50)


plot(x=1:50,y=Simulacion,xlim=c(1,50),ylim=c(0,5),type = "b",main = "Simulación de Evolución",xaxt="n",yaxt="n",ylab="Alelos ",xlab="Trayecto")
axis(1,at=seq(0,50,by=1))
axis(2,at=seq(0,5,by=1),labels=Estados)
#ItemB
#P00 = 1 y P55 = 1
#ItemC

#Consideramos un k(=500) grande para tener una correcta estimacion


(WF^500)[,"5"]


summary(WF)
