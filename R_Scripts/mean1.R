# Prior to running this script we need to be present in the directory where data is present

# We are performing "mean" in this script...
Age <- combined_data$Age
class(Age)

# na.rm means, remove null values and then calculate the average of the data...
# If sum null value is present in Age then mean will come out to be NA, so to avoid that we are 
 # using na.rm = TRUE so that null values will be neglected....
Average1 <- mean(Age,na.rm = TRUE)
print(Average1)

cat("The Average of all the ages of combined data is ",Average1,"\n")

# We can apply trim parameter also inside "mean". It will trim same number of data from left and
 # right of the data but forst it will sort the data...
# 0.3 means 3 values.
Average2 <- mean(Age,trim = 0.9, na.rm = TRUE)
cat("The Average of all the ages of combined data after trim is ",Average2,"\n")

# All these parameter properties are valid and can be applied for median as well....
Median1 <- median(Age,na.rm = TRUE)
print(Median1)

# R do not have a built in function for finding the mode of data....
unique(Age)

# Defining a function for calculating the mode of some vector....
# Create the function.
# tabulate function takes a vector and counts, the number of times each integer occur in it....
# In match() method every element of first vector will get compare with every element of second
 # vector and will return it's index inside second first vector. which.max() method will also
   # return the index of max value of vector....
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
# This above function can be used to find the mod of a vector....


Mode1 <- getmode(Age)
cat("Mode of the Age vector is ",Mode1,"\n")