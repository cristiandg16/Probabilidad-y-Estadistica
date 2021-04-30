
library(markovchain)
states<-c("80","135","139","145","NA")
T = matrix(c(0,0,0,0,1,
             0,8/13,3/13,1/13,1/13,
             1/16,3/16,3/8,1/4,1/8,
             0,1/11,4/11,5/11,1/11,
             0,1/8,1/2,1/8,1/4),nrow = 5,byrow = TRUE)
T
pi<- c(0,0,0,0,1) #Distribución inicial
mc <- new("markovchain",states = states,transitionMatrix = T,name="Ejercicio2")#Cadena de markov
transation2 = pi*(mc*mc) # =(mc^2)
transation2

#Los Puertos con mÃ¡s prob. de ser atacados resultaron: 139
#Los puertos con menos prob. de ser atacados resultaron : 80


summary(mc) #confirma que es irreducible
period(mc) #Nos dice el periodo de la cadena.
steadyStates(mc)


plot(mc,main="Grafo correspondiente a la Cadena de Markov")

