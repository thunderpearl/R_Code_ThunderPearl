# In this script we will be dealing with factors

# Below are the vectors with respective data
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")

data_frame1 <- data.frame(height, weight, gender)

print(data_frame1)
class(data_frame1)
# In the above line we will know about the class of data_fram1

print(data_frame1$height)
class(data_frame1$height)
print(is.factor(data_frame1$height))

data <- c("East","West","East","North","North","East","West","West","West","East","North")

# Adding extra level which is actually not present inside factor will not make
 # any difference in the factor.
result1 <- factor(data, levels = c("West","North","East","South"))
print(result1)

# We can generate our own factor levels as well
# This "labels" is a keyword and it has to be there
# First parameter will tell number of levels and if it is smaller than number of
 # elements passed in the vector then it will take elements starting from first
  # till the passed number. But, that passed number cannot be greater than the 
   # number of elements passed inside the vector..................................
custom_level1 <- gl(3,2,labels = c(1,2,3,4))
print(custom_level1)

custom_level2 <- gl(4,2,labels = c(1,2,3,4))
print(custom_level2)