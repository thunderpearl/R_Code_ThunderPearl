# K-means in R

library(ggplot2)

iris

my_iris <- iris


print(class(my_iris))


my_iris$Species <- NULL


print(my_iris)


View(my_iris)



kmeans_result <- kmeans(my_iris,3)


print(kmeans_result)


print(kmeans_result$cluster)


print(kmeans_result$centers)


print(kmeans_result$size)


# If we perform the clustering again then the results will get changed



table(iris$Species,kmeans_result$cluster)




plot(my_iris[c("Petal.Length","Petal.Width")],col = kmeans_result$cluster)


plot(iris[c("Petal.Length","Petal.Width")],col = iris$Species)





plot(my_iris[c("Sepal.Length","Sepal.Width")],col = kmeans_result$cluster)


plot(iris[c("Sepal.Length","Sepal.Width")],col = iris$Species)

