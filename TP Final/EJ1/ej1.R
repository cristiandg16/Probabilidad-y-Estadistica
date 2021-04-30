library(markovchain)

Juego<-function(MontoInit,MontoMax,Prob){ #Función que simula un juego.
  MontoAct<-MontoInit
  while(MontoAct>0 & MontoAct<MontoMax){ #Comprobamos si llego a la ruina o ganó la partida.
    Resultado<-sample(c(1,-1),1,c(Prob,1-Prob),replace = TRUE) #Ejecutamos una ronda.
    MontoAct<-MontoAct+Resultado
  }
  if(MontoAct==0) return(1) #LLego a la ruina.
  else return(0)
}

#Item A.Simular la Ruina del jugador para una inversiÃ³n inicial de $2,jugando un juego justo:

MontoInit = 2
MontoMax = 15
Prob = 0.5
Juego(MontoInit,MontoMax,Prob)


NJuegos=30 #Cantidad de juegos a simular.

Simulacion=replicate(n=NJuegos,{ #LLevamos a cabo las partidas.
  Juego(MontoInit,MontoMax,Prob)
})


plot(Simulacion,type="p",ylab="Resultado",xlab="Juego",sub="Aclaración: 1 representa la Ruina, 0 representa la Victoria",ylim=c(0,1),xlim=c(1,NJuegos),main="Simulación de la Ruina en varios juegos.")

#Item B.

Simulaciones = replicate(5000,Juego(MontoInit,MontoMax,Prob))
mean(Simulaciones)

#La probabilidad varÃ­a entre 0.58 y 0.61.(Para una probabilidad de ganar 0.5)
Simulaciones2 = replicate(5000,Juego(2,5,0.5))
mean(Simulaciones2)
#La probabilidad de ruina es de 0.985.(Para una probabilidad de ganar 0.2)
Simulaciones3 = replicate(5000,Juego(2,5,0.8))
mean(Simulaciones3)
#La probabilidad de ruina es de 0.061.(Para una probabilidad de ganar 0.8)
Simulaciones4 = replicate(5000,Juego(2,5,0.95))
mean(Simulaciones4)
#La probabilidad de ruina es de 0.003.(Para una probabilidad de ganar 0.95)


#Item C.

Estados = c("0","1","2","3","4","5")
p=0.5
MatrizT<-matrix(c(1,0,0,0,0,0,
            1-p,0,p,0,0,0,
            0,1-p,0,p,0,0,
            0,0,1-p,0,p,0,
            0,0,0,1-p,0,p,
            0,0,0,0,0,1),byrow = TRUE,nrow = 6)
MatrizT
CM<-new("markovchain",states = Estados,transitionMatrix = MatrizT) #Creacion de la cadena de markov
PI<-c(0,0,1,0,0,0)
PI*(P^n)


#Item D.
#probabilidad exacta
5/(2+5)
