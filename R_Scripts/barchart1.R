# Bar Charts in R
# Here, we use names.arg to naming....

# Create the data for the chart.
H <- c(17,32,28,3,41,32,54,32,23,24,76,54,5,7,8,16,75)


# Give the chart file a name.
#png(file = "mybarchart1.png")

# Plot the bar chart.
barplot(H,xlab = "(0,100)",ylim =c(0,100),col = "green",border = "blue")

# Save the file.
#dev.off()





# Bar Charts with title and colors

# Create the data for the chart.
H <- c(57,12,18,31,41,75)
M <- c("Mar","Apr","May","Jun","Jul","sept")

# Give the chart file a name.
#png(file = "barchart_months_revenue.png")

# Plot the bar chart.
# names.arg is used for assigning the name for the data. It is equal to the
 # number of data. xlab is labelling at x axis and ylab is labelling at y axis.

barplot(H,names.arg = M,xlab = "Month",ylab = "Revenue",col = "blue",
main = "Revenue chart",border = "red")



# Save the file.
#dev.off()





# Group and Stacked bar chart

# Create the input vectors.
colors <- c("red","green","blue")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")


# Number of elements in colors and regions are same because different regions will
 # be identified with different colors....

# We can plot these graphs using vectors and matrix only....


# This is a very important example with the perspective of earnings from different
 # regions and in different months of the year.

# In real life we can fetch data from some source and place it in matrix as per
 # our need and then make stacked plot of that data ....

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)

# Printing the matrix
Values

# Now, the stacked bar plots will be column wise. We have a column with values as
 # 2,4,5 . First, Bar will be plotted with these values....


# Give the chart file a name.
#png(file = "barchart_stacked.png")

# Create the bar chart.
# names.org is the vector of names appearing under every bar

barplot(Values,main = "total revenue",names.arg = months,xlab = "month",ylab = "revenue",
   col = colors)

# Add the legend to the chart.
# cex is the expansion factor
legend("topleft", regions, cex = 0.57, fill = colors)
# Save the file.
#dev.off()

