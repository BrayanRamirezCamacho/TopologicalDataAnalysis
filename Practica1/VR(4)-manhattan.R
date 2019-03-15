################################################
#Cálculo del csa VR(4) con métrica Manhattan
################################################


#--------------Manualmente----------------------

#La matriz de coordenadas
N<-matrix(c(0,0,2,2,4,5,1,2,0,4,2,3),nrow=6,ncol=2)

#Se asigna el espacio para la
#matriz de distancias

N.dist.Manh<-matrix(0,6,6)

#Se calculan las distancias y se
#llena la matriz

for(i in 1:5){
  for(j in (i+1):6){
    
    N.dist.Manh[i,j]<-sum(abs(N[i,]-N[j,]))
    N.dist.Manh[j,i]<-N.dist.Manh[i,j]
    
  }
}

#Se muestran los resultados
as.matrix(N.dist.Manh)

#----------usando función dist()-----------------

#La matriz de coordenadas
N<-matrix(c(0,0,2,2,4,5,1,2,0,4,2,3),nrow=6,ncol=2)

#Se asigna el espacio para la
#matriz de distancias

N.dist.Manh<-matrix(0,6,6)

#Se calculan las distancias y se
#llena la matriz

N.dist.Manh<-dist(N, method = "manhattan" )

#Se muestran los resultados

as.matrix(N.dist.Manh)

