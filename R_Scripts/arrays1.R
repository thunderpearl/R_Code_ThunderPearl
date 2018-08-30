# This script is for arrays......
# Arrays are also like matrix but they are kinda more advance

# Arrays can have multiple vectors in which matrix was giving the errors
array1 <- array(c(1,2,3,4),c(5,6,7,8,9),dim = c(3,3,1))
print(array1)


vec1 <- c(3,2,1,4)
vec2 <- c(5,6,7,9,8)

# Two matrix will get created with the dimension of 3 x 3.
array2 <- array(c(vec1,vec2),dim = c(3,3,2))
print(array2)

# Accessing the array elements is same as matrixes with the 3rd parameter for which 
 # array we wanna make query for...................................................

# Calculations accross the array elements.....
