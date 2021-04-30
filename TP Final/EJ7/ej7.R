

library(markovchain)
k<-3
p<-3/4
q<-1/4

Estados<-c("0","1","2","3")
pi<-c(1/4,1/4,1/4,1/4)
CA<-matrix(c(0,1,0,0,
             q,0,p,0,
             0,q,0,p,
             0,0,1,0),byrow=TRUE,nrow=4)

CA<-new("markovchain",states=Estados,transitionMatrix=CA,name="CaminataAleatoriaEJ7")



CA^3

CA
plot(CA,main="Grafo asociado a la cadena de markov")
#ITEMB TRANSCRIBIR
#(1/4*((CA)["3","2"]*(CA["2","2"]))*((CA)["2","1"]*(CA)["1","2"]+(CA)["2","3"]*(CA)["3","2"])*((CA)["2","3"]*(CA)["3","2"]*(CA)["2","1"]+(CA)["2","1"]*(CA)["1","0"]*(CA)["0","1"]))/(1/4*(CA)["3","2"]*(CA["2","2"]))*(CA)["2","1"]*(CA)["1","2"]+(CA)["2","3"]*(CA)["3","2"])
#Itemc
#P(X3=1,X5=3)=(P(1,3))^2 * (pi0*(matriz7^3))(1,"1")


((CA)["1","2"]*(CA)["2","3"])*((pi*(CA^3))[1,"1"])



  