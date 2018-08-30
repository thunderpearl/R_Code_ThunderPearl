vec1 <- c(2,3,4,5,6,NA)

# This below code will give NA as we do not know the value of NA
mean(vec1)

# Below code will eliminate the NA and will calculate the mean on the basis of remaining
 # values in the vector....
mean(vec1,na.rm = TRUE)


# Using the trim function in R
vec2 <- sample(30)

sort(vec2)

sorted_vec2 <- sort(vec2)

# trim will cut the 10 values from left and 10 values from the right
mean(vec2,na.rm = TRUE,trim = 1.0)


sorted_vec2[11:20]

mean(sorted_vec2[11:20])


# now trying to trim 13 values from each sides
# Even now the mean of this will be 15.5
mean(vec2,na.rm = TRUE,trim = 1.3)





################################### Median in R ###################################

vec3 <- c(2,6,5,7,1,3,6)

# Median will also sort the vector values internally
median(vec3)

# Below command will show the proof for that....
sort(vec3)



################################ Mode ########################################

# mode gives the element with the max value it can be number as well as character

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

vec4 <- c(3,4,5,4,4,4,5,3,2,1,2,3,4,5,6,7,8,5,7,5,7,1)

getmode(vec4)


my_unique <- unique(vec4)
my_unique

# match will return a vector of the position of the first occurence of vec4 
 # in my_unique
# means it will give us positions 
match(vec4,my_unique)


# tabulate function in R
# tabulate takes the vector and counts the number of times each value has 
 # occured. But, it will count the total number of times each element occured 
  # whenver it encounter that element very first time. It will not repeat the 
   # value.
tabulate(match(vec4,my_unique))

# This will return 2
which.max(tabulate(match(vec4,my_unique)))

# Now, uniqv[2] will return 4 which is the mode of the vector....





############################## Standard Deviation ###############################

# Installing the calibrate package
# We do not need to install this package in R bcoz we are not using 
 # this package....
install.packages("calibrate")

# Loading the "calibrate package"
library("MASS")
library("calibrate")

# heights of the Dogs
heights1 <- c(600,470,170,430,300)

point_names <- c("600 mm","470 mm","170 mm","430 mm","300 mm")

# plotting the points 
plot(heights1, main = "standard deviation graph", col = rainbow(5), type = "o",lwd = 2 )


# cex is the expansion factor....
text(heights1,point_names,cex = 1.2)

my_mean1 <- mean(heights1)

# This will give the vector with the mean value for repeating 5 times 
my_mean_line1 <- rep(my_mean1,times = 5)

lines(my_mean_line1,col = "green",lwd = 2)

# Giving name to line
text(my_mean1,"mean",cex = 1)


# finding the standard deviation directly
standard_dev_heights1 <- sd(heights1)


# Standard deviation hard code way
standard_dev_heights2 <- sqrt(sum((heights1-mean(heights1))^2/(length(heights1)-1)))

# Both results must be same
standard_dev_heights2


upper_sd1 <- my_mean1 + floor(standard_dev_heights1)

upper_sd1



lower_sd1 <- my_mean1 - floor(standard_dev_heights1)

lower_sd1



# Now, drawing the above standard deviation and lower standard deviation
upper_sd_line1 <- rep(upper_sd1,times = 5)

upper_sd_line1



lower_sd_line1 <- rep(lower_sd1,times = 5)

lower_sd_line1


# Drawing these on graph
# lwd means line width....

lines(upper_sd_line1, col = "blue", lwd = 2)

lines(lower_sd_line1, col = "purple", lwd = 2)

