# Script for ggplot2

# ggplot means grammer of graphics plot

library(ggplot2)

head(diamonds)

str(diamonds)

summary(diamonds)


# ggplot works with the combination of the functions which works on by 
 
 # adding one function and other....

# For plotting the histogram....
# carat is the x axis by 

ggplot(diamonds, aes(carat)) + geom_histogram()


# This below width is too much 
ggplot(diamonds, aes(carat)) + geom_histogram(binwidth = 10)


# This below width is too small
ggplot(diamonds, aes(carat)) + geom_histogram(binwidth=0.1)


ggplot(diamonds, aes(carat)) + geom_histogram(binwidth = 0.15)


ggplot(diamonds, aes(carat)) + geom_histogram(binwidth = 0.01)


# This histogram is normally plotted and is showing the count on the 
 # basis of carat
# But, now we want to fill those counts as well....
ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()


# To see the data in the form of the polygon
ggplot(diamonds, aes(carat,fill=cut)) + geom_freqpoly()


# Title can be added by following syntax in the graph
ggplot(diamonds, aes(carat,fill=cut)) + geom_freqpoly()+ggtitle("Distribution of the counts on the different carat")



ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")



ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")+
  labs(x = "my carats",y = "my counts")




# install.packages('ggthemes', dependencies = TRUE)

library(ggthemes)

ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")+
  labs(x = "my carats",y = "my counts") + theme_bw()



ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")+
  labs(x = "my carats",y = "my counts") + theme_classic()



ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")+
  labs(x = "my carats",y = "my counts") + theme_economist()



ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")+
  labs(x = "my carats",y = "my counts") + theme_dark()



ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")+
  labs(x = "my carats",y = "my counts") + theme_excel()






ggplot(diamonds, aes(carat,fill=cut)) + geom_histogram()+ggtitle("Distribution of the cuts on the different carat")+
  labs(x = "my carats",y = "my counts") + theme_fivethirtyeight()



