setwd("~/DIPLOMADO/MODULO II/PROYECTO/FinalProject/")
organics <- read.csv("~/DIPLOMADO/MODULO II/PROYECTO/FinalProject/Datos/organics.csv", header=TRUE)
View(organics)
MuestraOrganics<-organics[sample(1:22223, 100),]
View(MuestraOrganics)

write.csv(MuestraOrganics, file="OrganicsDefinitiva.csv")

OrganicsDefinitiva <- read.csv("~/DIPLOMADO/MODULO II/PROYECTO/FinalProject/Datos/OrganicsDefinitiva.csv", header=TRUE)
View(OrganicsDefinitiva)
LimpiezaColumnas<- OrganicsDefinitiva[, c(4, 7, 14, 15)]
View(LimpiezaColumnas)
write.csv(LimpiezaColumnas, file="OrganicsLimpiezaColumnas.csv")
OrganicsLimpiezaColumnas <- read.csv("~/DIPLOMADO/MODULO II/PROYECTO/FinalProject/Datos/OrganicsLimpiezaColumnas.csv", header = TRUE)
View(OrganicsLimpiezaColumnas)
attach(OrganicsLimpiezaColumnas)

for (row in 1:nrow(OrganicsLimpiezaColumnas)) {
  if(row == "NA"){
     [na.omit(OrganicsLimpiezaColumnas)]
  }else{
    OrganicsLimpiezaCompleta[!is.u(OrganicsLimpiezaColumnas),]
  }
  
}

View(OrganicsLimpiezaCompleta)
write.csv(OrganicsLimpiezaCompleta, file="OrganicsFinal.csv")

row(OrganicsLimpiezaColumnas)
nrow(OrganicsLimpiezaColumnas)



DatosLimpios<- LimpiezaColumnas[!is.na(AGE),]
View(DatosLimpios)
attach(DatosLimpios)
length(DatosLimpios)
DatosLimpios2 <- na.omit(GENDER)
View(DatosLimpios2)