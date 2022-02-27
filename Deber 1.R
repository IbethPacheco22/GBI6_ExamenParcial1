#Tarea de bioinformatica
#Nombre: Ibeth Pacheco
#Ejercicio 1

ciudad <- "tena"
#Ejercicio 2
paises_andes <- c("Argentina", "Bolivia", "Chile", "Colombia", "Ecuador", "Perú", "Venezuela")

#Ejercicio 3

paises_america <- data.frame(listapaises = seq(1:12),
                             norte_sur = as.factor(c(rep(0, 10),1, 1)),
                             paises_aca = c("Argentina","Bolivia","Brasil","Chile","Colombia","Ecuador","Guyana","Paraguay","Perú","Suriname","USA","México"), 
                             población = c(45, 11, 212, 19, 50, 17, 786, 7, 32, 586, 329, 128)) #millones


#Ejercicio 4
#los datos que cumplen con las siguientes condiciones 
#1. Concentracióne entre 0.1 y 0.2
# dataset "DNase"
?DNase

print(head(DNase, 3))

concentration_data1 = subset(DNase, conc >= 0.1 & conc <= 0.2)

print(concentration_data1)

#Run diferente a 2, concentración mayor a 0.2  y densidad menor a 1.0
# dataset "DNase"

?DNase

concentration_data2 = subset(DNase, Run != 10 & conc > 0.2 & density <= 1.0)

print(concentration_data2)