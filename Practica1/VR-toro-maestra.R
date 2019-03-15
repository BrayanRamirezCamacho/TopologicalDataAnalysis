# Matriz de distancias (distancia del toro)
N <- matrix(c(0,0,2,2,4,5,1,2,0,4,2,3), 6, 2)

N.dist <- matrix(0,6,6)

for(i in 1:5){
  for(j in (i+1):6){
    
    # Calcula la orbita del j-esimo renglón de N
    Orb.j <- matrix(0,9,2)
    
    Translacion <- c(-8,0,8)
    
    for(k in  1:3){
      for(l in 1:3){
        Orb.j[l+3*(k-1),] <-  N[j,] + c(Translacion[k], Translacion[l])  
      }  
    }
    
    # Almacena las distancias del i-esimo renglón de N, con toda la órbita del j-esimo 
    Dists.i.Orb.j <- rep(0, length = 9) 
    
    for(m in 1:9){
      Dists.i.Orb.j[m] <- sqrt( sum( ( N[i,]-Orb.j[m,] )^2))
    }
    
    # Calcula la matriz de distancias en el toro
    N.dist[i,j] <- N.dist[j,i] <- min( Dists.i.Orb.j )
  }  
}

as.matrix(N.dist)
