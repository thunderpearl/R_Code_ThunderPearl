

data("airquality")


str(airquality)

summary(airquality)


head(airquality)


ggplot(airquality, aes(x=Wind, y = Temp))+
  geom_point()


# will get all the information on the function
?geom_point




data(mpg)


print(head(mpg))


print(str(mpg))


ggplot(mpg, aes(hwy,displ))+
  geom_point()


# We can connect the points using line also 
ggplot(mpg, aes(hwy,displ))+
  geom_point() + geom_point()


# Fill will work on histogram or barplot
# For coloring we cna use color, colour or col 

ggplot(mpg, aes(x = hwy,y = displ, col = drv))+
  geom_point()



# We wanted to put the size also in this scatter plot
# So, here more yer represent more size
ggplot(mpg, aes(x = hwy,y = displ, col = drv, size = year))+
  geom_point()




# Or we can decide the size on the basis of cylinder as well
ggplot(mpg, aes(x = hwy,y = displ, col = drv, size = cyl))+
  geom_point()



# we can check the data and decice the size on the basis of transmission 
# It will give rsult but still it is not advised to decide on the basis of char
# size should be given to the continuous values
ggplot(mpg, aes(x = hwy,y = displ, col = drv, size = trans))+
  geom_point()


# This way we are decidig the size of the scatter plot on the basis of cylinder and
 # shape on the basis of transmission

# Below plot is not good but still it is a good way of telling how data is distributed
# Try giving shape for factor or say categorical variable
ggplot(mpg, aes(x = hwy,y = displ, col = drv, size = cyl,shape = trans))+
  geom_point()



# Transparency can also be added in this plot
# Transparency should also be for the column which have continuous values....
ggplot(mpg, aes(x = hwy,y = displ, col = drv, size = cyl,shape = trans, alpha = year))+
  geom_point()

# But this does not brought any good of a result 
# Transparency is not good for human eyes




###########################  Bar and Box Plot geom ################################


# This will give the bar graph for the 3 different kind of driving mode

# But, it's a kind of histogram as we have three types of driving which is like 
 # giving a range
ggplot(mpg, aes(drv)) +
  geom_bar()



# This below is a bar graph in true sense
ggplot(mpg, aes(displ)) +
  geom_bar()


# We have fill the bars on the basis of drv, but whenever we want to do custom 
 # colors then we have to supply the color geom_bar()
ggplot(mpg, aes(drv, fill = drv)) +
  geom_bar()


# Supplying the custom color in the geom_bar()
# In the below plor legend part will also go away as there is no seperate color 
 # for drv
ggplot(mpg, aes(drv)) +
  geom_bar(fill="blue")


# We can give the color code as well in place of fill

# It will calculate the mean of the y data which is displ
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="blue", col="green")

# col inside geom_bar() is for border....



# This will be error as bar cannot be plotted for scatter plot
ggplot(mpg, aes(drv,displ)) +
  geom_bar()





# geom_point in here is the data point onto the bars
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="blue", col="green")+
  geom_point(col = "yellow")




# For plotting the points in a more better way
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="green", col="blue")+
  geom_point(position = position_jitter(),col = "red")




# jitter do take the value between 0 to 1
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="green", col="blue")+
  geom_point(position = position_jitter(0.4),col = "red")




# size and shape can also be given to the geom_point()
# Different shapes have differnet numbers....
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="green", col="blue")+
  geom_point(position = position_jitter(),col = "red", size = 2, shape=24)





# Themes can be added as well without ggthemes
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="green", col="blue")+
  geom_point(position = position_jitter(),col = "red", size = 2, shape=24)+
  theme(panel.grid = element_blank())




# This theme function have huge number of options available 
# ?theme
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="green", col="blue")+
  geom_point(position = position_jitter(),col = "red", size = 2, shape=24)+
  theme(panel.grid = element_blank())




# Giving panel a background
ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="green", col="blue")+
  geom_point(position = position_jitter(),col = "red", size = 2, shape=24)+
  theme(panel.grid = element_blank(), panel.background = element_rect(fill="grey"))




myggplot1 <- ggplot(mpg, aes(drv,displ)) +
  geom_bar(stat="summary",fun.y="mean",fill="green", col="blue")+
  geom_point(position = position_jitter(),col = "red", size = 2, shape=24)




# Ploting the above code
myggplot1





# adding extra elements to the existing object
myggplot1+
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(fill="grey"))





# Adding the line into the axis
# we can add one line as well or more
# line size can go even below 1 as well, in points
myggplot1+
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(fill="grey"),
        axis.line.y = element_line(color = "blue", size = 1),
        axis.line.x = element_line(color = "blue", size = 1))






# Instead of line we can add border as well
myggplot1+
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(fill="grey"),
        panel.border = element_rect(colour = "black", fill = NA, size = 0.8))






# We can add differnet themes as well
myggplot1 + theme_dark()
myggplot1 + theme_get()
myggplot1 + theme_linedraw()



# we can custom add elements into our theme by theme() function
myggplot1 + theme_minimal() +   theme(panel.grid = element_blank(), 
                                      panel.background = element_rect(fill="grey"),
                                      panel.border = element_rect(colour = "black", fill = NA, size = 0.8))




# We can create our own custom themes as well and that will be helpful when we 
 # will be doing a lot of work like writing paper and want same kind of theme for 
  # most of our figures....





# We can do the boxplotting as well
ggplot(mpg, aes(drv, displ))+
  geom_boxplot(fill = "#ff5c33",col = "black")+ 
  geom_point()




# with notch
ggplot(mpg, aes(drv, displ))+
  geom_boxplot(fill = "#ff5c33",col = "black", notch = TRUE)+ 
  geom_point()




# we can add titles, labels and many more
ggplot(mpg, aes(drv, displ))+
  labs(x="my drv",y="my displ")+
  ggtitle("My boxplotting for drv and displ")+
  geom_boxplot(fill = "#ff5c33",col = "black", notch = TRUE)+ 
  geom_point()























