################################################
#Cálculo del csa VR(4) con métrica del Máximo
################################################


#--------------Manualmente-----------------------

#La matriz de coordenadas

N<-matrix(c(0,0,2,2,4,5,1,2,0,4,2,3),nrow=6,ncol=2)

#Se asigna el espacio para la
#matriz de distancias

N.dist.Max<-matrix(0,6,6)

#Se calculan las distancias y se
#llena la matriz

for(i in 1:5){
  for(j in (i+1):6){
    
    N.dist.Max[i,j]<-max(abs(N[i,]-N[j,]))
    N.dist.Max[j,i]<-N.dist.Max[i,j]
    
  }
}

#Se muestra el resultado
as.matrix(N.dist.Max)


#----------usando función dist()----------------

#La matriz de coordenadas
N<-matrix(c(0,0,2,2,4,5,1,2,0,4,2,3),nrow=6,ncol=2)

#Se asigna el espacio para la
#matriz de distancias

N.dist.Max<-matrix(0,6,6)

#Se calculan las distancias y se
#llena la matriz

N.dist.Max<-dist(N, method = "maximum" )

#Se muestra el resultado

as.matrix(N.dist.Max)