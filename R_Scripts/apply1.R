# Let's see the use of apply function

# Three operations which we will be using here are
 # apply, tapply, sapply

matrix1 <- matrix(c(1:9),nrow = 3, ncol = 3, byrow = TRUE)
print(matrix1)

# The second argument defines whether to do the operation row wise or column wise
# 1 means row wise and 2 means column wise.
result1 <- apply(matrix1, 1, sum)

print(result1)

result2 <- apply(matrix1,2,sum)
print(result2)


set.seed(3)
vector2 <- sample(100,40)

matrix2 <- matrix(vector2, ncol = 5)

matrix2


max_apply <- apply(matrix2, 1, max)
max_apply


min_apply <- apply(matrix2,2,max)
min_apply


# Here, we can define our own function as well and can use those function into the
 # apply function ....





# We have another form of apply and it is called as lapply
# This is used on vector, dataframes and lists
# These will return lists only

my_char_vec1 <- c("hello","people","how","are","you?")

char_count1 <- lapply(my_char_vec1,nchar)

char_count1


# lapply works on the columns by default....
# This will work on the every element of the matrix....
max_lapply <- lapply(matrix2, max)
max_lapply


# Here, lapply will work on seperate columns
max2_lapply_df <- lapply(data.frame(matrix2), max)
max2_lapply_df





# sapply is same as lapply but it's returned output is vector or matrix




# Using the tapply function
# This will take vector, subset and function

# Let's try this on the iris dataset
my_iris_test <- iris


head(my_iris_test)


# tapply basically takes a vector but we can use dataframe also for our work....

# Here we want to calculate the sum of Sepal.Length on the basis of Species
result_tapply <- tapply(my_iris_test$Sepal.Length, my_iris_test$Species, sum)

result_tapply
