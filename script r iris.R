

### cargar datos

datos = read.table("PIB_2015.csv",header=TRUE,sep=";",
                   dec=",",row.names = 1)

### estadisticas descriptivas
summary(datos)


library(ggplot2) ## carga el paquete ggplot2

## ejemplo histograma

ggplot(datos, mapping=aes(Agri))+
  geom_histogram(fill="blue")

## grafico de dispersion

ggplot(datos, aes(x=Agri,y=Mina))+
  geom_jitter(color="red")+
  geom_smooth(method="lm")+
  theme_bw()+
  labs(x="Agricultura",y="Minas",title = "hola")

### datos decatlon
library(FactoMineR)
data("decathlon")

summary(decathlon)

ggplot(decathlon,
       aes(x=decathlon[,13],y=decathlon[,1]))+
  geom_boxplot(fill="green")+
  labs(x="Competición",y="Prueba 100m")






