

library(dplyr) ## manipulacion de datos

data(iris)

## select()

select(iris,Sepal.Length,Petal.Length)

select(iris,starts_with("S"))

select(iris,-Species)

## filter()

filter(iris,Sepal.Length >= 5)

dataSetosa=filter(iris,Species=="setosa") ## filtra para la specie= setosa

summary(dataSetosa)

filter(iris, Sepal.Length >= 5, Species %in% c("setosa"))


## arrange() : ordenar de menor a mayor

arrange(iris,Sepal.Length)

arrange(iris,desc(Sepal.Length)) ## con desc lo hace de mayor a menor

## rename()

rename(iris, LongitudSepalo=Sepal.Length)

## mutate()

mutate(iris, Y = Sepal.Width^2)

## summarise

summarise(iris, mediana = median(Sepal.Length),
          variance = var(Sepal.Length))

## filter y summarise

filter(iris,Species=="setosa") %>%
  summarise(median(Sepal.Length))

## Otro ejemplo

iris %>%
  filter(Sepal.Length>5) %>%
  filter(Species=="setosa") %>%
  summarise(median(Sepal.Length),median(Sepal.Width))






