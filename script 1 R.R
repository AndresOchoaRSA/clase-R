
## Universidad del Valle
## Probabilidad
## Practica 1 R

data(iris) ## llamando los datos iris
summary(iris) ## Realiza estadisticas descriptivas

var(iris$Sepal.Length) ## encuentra la varianza de la variable.
sd(iris$Sepal.Length) ## encuentra desviación estandar de la variable.
quantile(iris$Sepal.Length, 0.9)
## Percentil 90, por debajo del 6.9 existe el 90% de los datos.

## porcentajes para la variable cualitativa.
table(iris$Species)/150

## histogramas
par(mfrow=c(2,2))
hist(iris$Sepal.Length, col="red", main="Sepal Length",
     xlab="Sepal Length")
hist(iris$Sepal.Width, col="gold", main="Sepal Width",
     xlab="Sepal Width", xlim=c(2,4.5))
hist(iris$Petal.Length, col="green", main="Petal Length",
     xlab="Petal Length", ylim=c(0,40))
hist(iris$Petal.Width, col="skyblue", main="Petal Width",
     xlab="Petal Width")

?hist

#### Diagramas de Cajas para 1 Variable.
par(mfrow=c(1,1))
boxplot(iris$Sepal.Length, col="red", main="Sepal Length")

#### Diagramas de Cajas por grupo.
par(mfrow=c(2,2))
boxplot(iris$Sepal.Length~iris$Species, col=c(2,3,4))
boxplot(iris$Sepal.Width~iris$Species, col=c(2,3,4))
boxplot(iris$Petal.Length~iris$Species, col=c(2,3,4))
boxplot(iris$Petal.Width~iris$Species, col=c(2,3,4))

### Graficos de Dispersión (plano cartesiano X, Y)
par(mfrow=c(1,1))
plot(iris$Sepal.Length, iris$Sepal.Width, col="blue")
plot(iris$Sepal.Length, iris$Petal.Length, col="red")
plot(iris$Petal.Length, iris$Petal.Width, col="green2")

cor(iris$Petal.Length, iris$Petal.Width)

### Graficos de Dispersion entre todas las variables.
plot(iris[,-5], col=iris$Species)

###
datos = read.table("BasePaises.csv", header = TRUE,
           sep=";", dec=",", encoding = "latin1")






