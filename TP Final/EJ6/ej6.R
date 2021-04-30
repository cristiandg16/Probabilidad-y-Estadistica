
library(markovchain)
Estados<-c("0","1","2","3","4","5")
MatrizT<-matrix(c(dbinom(0,5,1/6),dbinom(1,5,1/6),dbinom(2,5,1/6),dbinom(3,5,1/6),dbinom(4,5,1/6),dbinom(5,5,1/6),
                  0,dbinom(0,4,1/6),dbinom(1,4,1/6),dbinom(2,4,1/6),dbinom(3,4,1/6),dbinom(4,4,1/6),
                  0,0,dbinom(0,3,1/6),dbinom(1,3,1/6),dbinom(2,3,1/6),dbinom(3,3,1/6),
                  0,0,0,dbinom(0,2,1/6),dbinom(1,2,1/6),dbinom(2,2,1/6),
                  0,0,0,0,dbinom(0,1,1/6),dbinom(1,1,1/6),
                  0,0,0,0,0,dbinom(0,0,1/6)),byrow=TRUE,nrow = 6)
MatrizT
D2<-new("markovchain",states=Estados,transitionMatrix=MatrizT,name="DadosLocos")
summary(D2)
plot(D2,main="Grafo asociado a la cadena de markov.")

#B)
#la probabilidad de obtener todos 6 en la tercer jugada es P(x3=5)=0.01327206

PI<-c(1,0,0,0,0,0)
IB<- PI*(D2^3)
IB
IB[6]


#c)

D2100<-D2^100
D2100


