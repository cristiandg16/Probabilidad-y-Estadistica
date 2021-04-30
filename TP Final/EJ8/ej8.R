library(markovchain)
Estados=c("1°","2°","3°","4°","A","G")
UN<-matrix(c(0.03,0.91,0,0,0.06,0,
             0,0.03,0.91,0,0.06,0,
             0,0,0.03,0.93,0.04,0,
             0,0,0,0.03,0.04,0.93,
             0,0,0,0,1,0,
             0,0,0,0,0,1),byrow = TRUE,nrow=6)

UN<-new("markovchain",states=Estados,transitionMatrix=UN,name="Universidad")
plot(UN)
#Clasificacion de los estados.
summary(UN)
#Item C
#Consideremos a Q como la matriz de estados transitorios.


T=UN[1:4,1:4]
T
Id<-matrix(c(1,0,0,0,
             0,1,0,0,
             0,0,1,0,
             0,0,0,1),byrow=TRUE,nrow=4)
Id
R1<-solve(Id-T)
R1
PromCurso=R1[1,1]+R1[1,2]+R1[1,3]+R1[1,4]
PromCurso


