

?mtcars


head(head(mtcars))


str(mtcars)

barplot(mtcars$gear)

my_gear <- mtcars$gear

my_gear_fac <- as.factor(my_gear)

class(my_gear_fac)


my_gear_fac


summary(my_gear_fac)

gear_numbers <- summary(my_gear_fac)

gear_numbers
class(gear_numbers)

barplot(gear_numbers, ylim = c(0,20))

barplot(gear_numbers, ylim = c(0,20), col = rainbow(3))




# For plotting the stacked barplot
my_cars_table <- table(mtcars$cyl, mtcars$gear)


print(my_cars_table)

class(my_cars_table)

my_cyl_labels <- c("4-cyl", "6-cyl", "8-cyl")

my_gears <- c("3-gear","4-gears","5-gears")


barplot(my_cars_table,names.arg = my_gears, ylim = c(0,20),col = rainbow(3))

legend("topright",my_cyl_labels,cex = 0.6, fill = rainbow(3))






# Scatter plot for the wt and mpg
plot(mtcars$wt, mtcars$mpg)






