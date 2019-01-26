##########################################################
######### Iniciando la extracción de información #########
##########################################################

library('ggplot2')
library("rvest")

# Asignación de una variable a la URL de la página

paginaChileAutos <- 'https://www.chileautos.cl/autos/busqueda/volkswagen/golf/'

# Lectura de HTML como variable paginaChileautos

webpageChileAutos <- read_html(paginaChileAutos)

#Extracción del texto contenido en clase de prueba

contenidoChileAutos <- html_nodes(webpageChileAutos, '.search-listings__items clearfix')

print(contenidoChileAutos)

#Extracción del texto contenido en la clase listing-item__price

contenido2Chileautos <-html_nodes(webpageChileAutos, '.listing-item__price')

contenido2<-html_nodes(contenido2Chileautos,"p")

#Extrayendo los precios contenidos en contenido2

textocontenido<-html_text(contenido2)

#Limpiando "." y "$" de los valores

textocontenido<-gsub("[.]","",textocontenido)
textocontenido<-gsub("\\$","",limpiarcontenido)


print(textocontenido)

unlistcontenido2<-unlist(textocontenido)

tablacontenido2 <- table(unlistcontenido2)

# Transformando a data framtabla
contaChileautos <- as.data.frame(tablacontenido2)

#Se crea data.frame vacio
preciosVw <-data.frame()


for(i in 1:10){ 
  print (paste("https://www.chileautos.cl/autos/busqueda/volkswagen/golf/?s=",i*20,sep = ""))

  
  webpageChileAutos <- read_html(paginaChileAutos)
  
  contenido2Chileautos <-html_nodes(webpageChileAutos, '.listing-item__price')
  
  
  links<-html_attr(contenido2Chileautos,"href")
  
  for(link in link){
    print(link)
    
  DatosVwgolf<- link
  
  datosGolf<-read_html(DatospreciosVw)
  
  #extracción de precios autos
  precioProductos <--html_nodes(webpageChileAutos, '.listing-item__price')
  precioProductos <- html_nodes(contenido2Chileautos,"p")
  precios <- html_attr(precioProductos, 'data-pricereal')
  
  }
  
}




# Contando y pasando a dataframe
tablaTextoCA <- table(unlist(preciosVwgolf))
dfTextoYFreqCA <- as.data.frame(tablaTextoCA)




modeloVw<- html_nodes(webpageChileAutos, '.listing-item__title')
print(modeloVw)
titulos <- html_text(modeloVw)

df<-data.frame(modelos = titulos, precios = limpiarcontenido)

  