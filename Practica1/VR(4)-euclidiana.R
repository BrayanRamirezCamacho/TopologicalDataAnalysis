################################################
#Cálculo del csa VR(4) con métrica euclidiana
################################################

#--------------Manualmente----------------------

#La matriz de coordenadas

N<-matrix(c(0,0,2,2,4,5,1,2,0,4,2,3),nrow=6,ncol=2)

#Se asigna el espacio para la
#matriz de distancias

N.dist<-matrix(0,6,6)

#Se calculan las distancias y se
#llena la matriz

for(i in 1:5){
  for(j in (i+1):6){
    
    N.dist[i,j]<-sqrt(sum((N[i,]-N[j,])^2))
    N.dist[j,i]<-N.dist[i,j]
    
  }
}

N.dist<-dist(N)

#Se muestra el resultado
as.matrix(N.dist)

#----------usando función dist()-----------------

#La matriz de coordenadas

N<-matrix(c(0,0,2,2,4,5,1,2,0,4,2,3),nrow=6,ncol=2)

#Se asigna el espacio para la
#matriz de distancias

N.dist<-matrix(0,6,6)

#Se calculan las distancias y se
#llena la matriz

N.dist<-dist(N)

#Se muestra el resultado
as.matrix(N.dist)
