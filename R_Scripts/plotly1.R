

library(ggplot2)
library(plotly)

head(diamonds)
dim(diamonds)


my_diamonds <- diamonds


set.seed(20)

my_rand_diamonds1 <- my_diamonds[sample(nrow(my_diamonds),1000),]


# Both are different 
head(my_rand_diamonds1)
head(diamonds)



plot_ly(my_rand_diamonds1, x = ~carat, y = ~price,mode="markers")



# trying the ployt_ly on mtcars dataset
library(MASS)

head(mtcars)


library(plotly)

# Without ~ below code is not working ....
plot_ly(mtcars, x = ~wt,y = ~mpg, mode = "markers",type = "scatter")



# Checking the number of cars on the basis of cylinder
table(mtcars$cyl)


# plot_ly is little different than ggplot and base plot
# It require ~ in front of variable to make plot work....
plot_ly(data = mtcars, x = ~wt,y = ~mpg, mode = "markers",type = "scatter"
        ,color = ~disp)




plot_ly(data = mtcars, x = ~wt,y = ~mpg, mode = "markers",type = "scatter"
        ,color = ~disp, size = ~hp)




plot_ly(data = mtcars, x = ~wt,y = ~mpg, mode = "markers",type = "scatter"
        ,color = ~cyl, size = ~hp)




set.seed(16)

my_temp <- rnorm(100, mean = 35, sd = 6)


# Check the histogram for the my_temp

hist(my_temp)

my_temp



my_press <- rnorm(100)

hist(my_press)

my_press



dtime <- 1:100


plot_ly(x = ~my_temp, y = ~my_press, z = ~dtime, type = "scatter3d", mode = "markers", color = ~my_temp)

