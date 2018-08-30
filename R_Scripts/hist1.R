# This program is for testing the histogram
var1 <- c(2,3,4,5,4,3,4,5,6,7,7,6,5,5,6,7,8,9,10,11,12,13,43,23,35,20,21,47,56,53,42,76,57,56,78,85)

# Now, drawing the histogram of the above vector....
hist(var1,xlab = "Numbers",main = "Frequency of the Numbers", xlim = c(0,100),ylim = c(0,20), col = "red", border = "black", breaks = 10)

# In bar plot we plot real values and in histogram we plot frequencies of values in
 # between a range ....

