

# Installing rpart library

# install.packages("rpart")


library(rpart)


# refering to the iris data and storing it into a variable
my_iris <- iris


head(my_iris)


# getting 120 random values from range of 150 
my_random <- sample(150,120)


my_iris_train <- my_iris[my_random,]
head(my_iris_train)
dim(my_iris_train)


my_iris_test <- my_iris[-my_random,]
head(my_iris_test)
dim(my_iris_test)



# creating our decision tree model
my_deci_model <- rpart(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,my_iris_train,method = "class")


# Printing the model information
print(my_deci_model)



# Visualizing our model
plot(my_deci_model)
text(my_deci_model)


# install.packages("rpart.plot")
library(rpart.plot)

rpart.plot(my_deci_model)


?rpart.plot



# Now is the prediction time
my_predict1 <- predict(my_deci_model,my_iris_test,type = "class")


# Columns will show the predictions....
table(my_iris_test[,5],my_predict1)

