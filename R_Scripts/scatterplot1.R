# Scatter plot in R
# Scatterplot is alos as useful as line graph

# Basic function for scatterplot is same as line graph i.e. plot()

# scatter plot is always plotted for two vectors or say two variables....

library("MASS")


# To know where all the packages are installed in the computer
print(.libPaths())


ships

ships[c("year","incidents")]

# Scatter plot with the two variables shows the correlation between two variables.....

# linegraph by default take one variable as input though we can give second variable in
 # the lines(). 
# In scatter plot we have to give two variables in argument of x and y
# This below graph shows the distribution of the indidents in a year...
 # Example, In year 60 incidents are 0,0,1,1,29,39  . Points can overlap as well
plot(x = ships$year,y = ships$incidents,main = "scatter plot for year vs incidents",xlab = "years",ylab = "incidents",xlim = c(55,90),ylim = c(0,60))


plot(x = ships$year,y = ships$incidents,main = "scatter plot for year vs incidents",xlab = "years",ylab = "incidents",xlim = c(55,90),ylim = c(0,60),type = "o")


airquality

plot(x = airquality$Temp,y = airquality$Month, main = "scatter plot of Temp Vs Month",xlab = "Temperature",ylab = "Month")


plot(airquality$Temp,airquality$Month,main = "scatter plot2 for Temperature and Month")

# scatter plot matrices
pairs(~year+service+incidents, data = ships, main = "scatter plot matrices of year, service and incidents")

