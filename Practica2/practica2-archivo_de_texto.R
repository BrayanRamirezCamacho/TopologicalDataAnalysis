
#**************************************************************
#Este programa lee una nube de datos desde un archivo .csv
#para calcular el 0-esqueleto y el 1-esqueleto, para luego
#generar un archivo .txt con ellos.
#**************************************************************

#Leer la nube del archivo nube6.csv
#Nube: La matriz de coordenadas 
Nube <- read.table( file="nube6.csv", header=FALSE, sep="," )    

#Verificar que la nube de puntos coincida
plot(Nube)

#Definir el parámetro de proximidad
epsilon<-4

#Se asigna el espacio para la
#matriz de distancias
N.dist<-matrix(0,6,6)


#Se calculan las distancias

for ( i in 1:5 ){
  for(j in i:6){
    
    N.dist[i,j]<-sqrt(sum((Nube[i,]-Nube[j,])^2))
    N.dist[j,i]<-N.dist[i,j]
    
    if( N.dist[i,j] <= epsilon ){
      
      #Se genera el archivo de texto con los 0 y 1 simplejos
      if ( i==j ){ write.table( x=c(i), file="1-esqueleto.txt", append=TRUE, sep="", row.names=FALSE, col.name=FALSE) }
      
      else { write.table( x=t(c(i,j)), file="1-esqueleto.txt", append=TRUE, sep="", row.names=FALSE, col.name=FALSE) }}
  }
}
