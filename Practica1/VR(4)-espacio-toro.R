###################################################
#Cálculo del csa VR(4) en el toro con
#métrica euclidiana
###################################################

#La matriz de coordenadas
N <- matrix(c(0,0,2,2,4,5,1,2,0,4,2,3),nrow=6,ncol=2)

#Se asigna el espacio para la
#matriz de distancias

N.dist.Toro <- matrix(0,6,6)

#Se calculan las distancias y se
#llena la matriz

for(i in 1:5){
  for(j in (i+1):6){
  
  #Se calcula la órbita del j-ésimo renglón de N
  Orb.j <- matrix(0,9,2)
  
  Traslacion <- c(-8,0,8)
  
  for(k in 1:3){
    for(l in 1:3){
    Orb.j[l+3*(k-1),] <- N[j,] + c(Traslacion[k],Traslacion[l])  
    }   
  }
  
#Almacena las distancias del i-esimo renglon de N, con
#toda la órbita del j-esimo
  Dists.i.Orb.j <- rep(0, length = 9)
  
  for(m in 1:9){  
  Dist.i.Orb.j[m] <- sqrt( sum(( N[i,]-Orb.j[m,] )^2))
  
}

#Calcula la matriz de distancias en el toro
N.dist.Toro[i,j] <- N.dist.Toro[j,i] <- min( Dist.i.Orb.j )

  }
}

as.matrix(N.dist.Toro)
