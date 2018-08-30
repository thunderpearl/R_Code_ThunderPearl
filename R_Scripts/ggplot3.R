

library(ggplot2)


# mpg data comes along with the ggplot2 package
class(mpg)


str(mpg)


?mpg


# first argument is x and second argument is y and the we have data
qplot(displ,hwy,data = mpg)


# coloring on th basis of drv means we are creating various sub groups
# drv goes for the driving system
# It is like 4 wheel drive, front wheel drive, rear wheel drive
qplot(displ,hwy,data = mpg, col = drv)


qplot(displ,hwy,data = mpg, col = drv, main = "hwy vs displ with different driving mode")




qplot(displ,hwy,data = mpg,geom = c("point","smooth"))



qplot(displ,hwy,data = mpg, col = drv,geom = c("point"))

qplot(displ,hwy,data = mpg, col = drv,geom = c("smooth"))




# point means we wnna see the points and smooth is for smoothening the line which will
 # try to cover the data
qplot(displ,hwy,data = mpg, col = drv,geom = c("point","smooth"))



# method defined below is linear regression....
qplot(displ,hwy,data = mpg, col = drv,geom = c("point","smooth"),method = "lm")




# histogram can also be made using qplot function
qplot(hwy,data = mpg)


qplot(hwy,data = mpg, fill = drv)



# Very Important thing in ggplot is facets
# facets are like panels in ggplot


# It's like scatter plot is happening below there

# In facets parameters, variable in the left side of ~ defines rows and variable on 
 # right hand side defines columns

# . signifies that there is no variable for number of rows hence there will be only 
 # one row
qplot(displ,hwy, data = mpg, facets = .~drv)


qplot(displ,hwy, data = mpg, facets = drv~.)


qplot(hwy, data = mpg, facets = drv~.)



qplot(hwy, data = mpg, facets = drv~., binwidth=2)




my_maacs <- load("maacs.rda")




qplot(displ,hwy, data = mpg, shape = drv)



qplot(displ,hwy, data = mpg, color = drv, shape = drv)




# There is a dataset called maacs in the MASS package
# So, we need to load the MASS into the R to use maacs

library("MASS")


print(maacs)


print(str(maacs))


# scatter plot pm25 vs eno
my_ggplot1 <- ggplot(maacs, aes(pm25,eno))
my_ggplot1+geom_point()



my_ggplot1 <- ggplot(maacs, aes(pm25,eno, color = mopos))
my_ggplot1+geom_point()


# This geom_smooth means adding a smooth conditional mean 
my_ggplot1 <- ggplot(maacs, aes(pm25,eno))
my_ggplot1+geom_point()+geom_smooth()


my_ggplot1 <- ggplot(maacs, aes(pm25,eno, color = mopos))
my_ggplot1+geom_point()+geom_smooth()


# We can add the facets also in here just by adding + ....
# function used here will be facet_grid()







