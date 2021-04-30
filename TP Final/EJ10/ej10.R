

library(markovchain)

ppoison<-function(suma=0,s,lambda){
  for(i in 0:199){
    suma = suma + dpois(i,s*lambda)
  }
  return(suma)
}
1 - ppoison(0,2,100)


#Item B)#
votantes = rpois(1,1000)#1000 = (horas=10)*(lambda = 100)
votantes
Horas = c(0,runif(votantes,0,10))


plot(sort(Horas),xlab="Votantes",ylab="Horas",main="Simulación de una votación",xlim = c(0,votantes))

#Item C)#
votantes
for(i in 1:votantes){
  Horas[i]=abs(Horas[i+1]-Horas[i])
}

hist(Horas,col = "grey",main="Histograma de tiempo entre arribos.",ylab="Votantes")
plot(sort(Horas),type="l",ylab = "Tiempo entre arribos",xlab="Arribos",main="Simulación de arribos")

