#* @serializer unboxedJSON
#* @get /kmeans/<nCluster>
kmeansCluster <- function(nCluster){
  model <- kmeans(iris[,1:4], centers = nCluster)
  return (list(centroid=model$centers, within=model$withinss, between=model$betweenss))
}
