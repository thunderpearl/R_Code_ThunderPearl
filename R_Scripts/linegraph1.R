# Line graph is also a good way of plotting the data where data gets connected using 
 # lines....

# LInegraphs are basically used to see the trends in the data
var1 <- c(2,3,5,4,1,2,3,4,5,6,7,7,7,7,8,7,6,5,5,5,5,4,5,6,7,8,9)

plot(var1)


plot(var1,type = "o")


# Labels can also be given in for the line graph
plot(var1,type = "c",main = "Money collection every month",xlab = "Months",ylab = "millions",col = "green")

# h for histogram like lines
# S for steps
# p for points
# n for nothing
# l for lines
# b for both points and lines
# c for empty points joint by lines
# Multiple line can be plot on the same graph
var2 <- c(3,5,7,6,5,7,7,7,5,5,2,8,9,10,1,2,7,6,5,8,11,12,6,7,5,4,9)
lines(var2,type = "o",col = "blue")




plot(var1,type = "o",main = "Money collection every month",xlab = "Months",ylab = "millions",col = "green",ylim = c(0,16))
lines(var2,type = "o",col = "blue")

# lwd can be used to give the intervals as per our requirements in R


var3 <- c(5,6,7,8,7,6,5,3,4,5,6,7,8,9,7,7,7,5,5,5,6,6,1,2,4,5,7,8,9)
lines(var3, type = "o", col = "red")



# These packages has to be loaded into the R environment....
library("MASS")
library(help = "MASS")

# Scatter plot matrices
# When we want to compare one field with the rest of the other fields
pairs(~year+period+service+incidents,data = ships,main = "scatter plot matrices for ships")

pairs(~year+service+incidents,data = ships,main = "scatter plot matrices year-service-incidents",col = rainbow(10))
