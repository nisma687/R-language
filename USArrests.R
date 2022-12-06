data<-read.csv("UsArrests.csv")
str(data)
summary(data)
#normalize korar jonno scaledata
Scaledata=scale(data[,-1])
Scaledata
#library for visualisation
install.packages("ClusterR")
install.packages("factoextra")
library(ClusterR)
library(factoextra)
#vissualisation of l bow ,cluster number decision (graph)
fviz_nbclust(Scaledata,kmeans,method = "wss")
#clustering vector and normal k means info visualization
km<-kmeans(Scaledata,centers=4,nstart=25)
km
#kothay kon cluster dekhar jonno
df_member=cbind(data,cluster=km$cluster)
df_member
#
fviz_cluster(km,data=Scaledata)
#prottek cluster r variable mean
aggregate(USArrests,by=list(cluster=km$cluster),mean)
