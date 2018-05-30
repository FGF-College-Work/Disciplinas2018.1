install.packages("scatterplot3d")
library("scatterplot3d")

data(iris)
head(iris)

scatterplot3d(iris[,1:3])
