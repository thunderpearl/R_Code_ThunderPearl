

# Making Pie Chart
my_salary1 <- c(20000,10000,35000,43000,5000,34000)

my_labels <- c("A","B","C","D","E","F")

my_colors <- c(rainbow(6))


pie(my_salary1,my_labels)


# Craeting the pie chart 
pie(my_salary1,my_labels,col = my_colors, border = "yellow",lty = 100,density = 40)


pie(my_salary1,my_labels,col = my_colors, border = "yellow",lty = 100,density = 200)


pie(my_salary1,my_labels,col = my_colors, border = "yellow",lty = 100,density = -40)


pie(my_salary1,my_labels,col = my_colors, border = "yellow",lty = 100,density = 400)





# For 3D plotting we need to import the library "plotrix"

install.packages("plotrix")

library(plotrix)



pie3D(my_salary1,labels = my_labels,col = my_colors, explode = 0.05)


pie3D(my_salary1,labels = my_labels,col = my_colors, explode = 0.05,theta = 10)

