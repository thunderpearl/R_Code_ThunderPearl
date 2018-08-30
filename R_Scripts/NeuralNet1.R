

library(MASS)


# install.packages("neuralnet")

library(neuralnet)


set.seed(341)



# Boston Dataset is available in MASS package

class(Boston)

head(Boston)

str(Boston)

dim(Boston)


names(Boston)


# To get the information about the Boston dataset
help("Boston")
?Boston


my_boston_df <- Boston

head(my_boston_df)


# This will show that the data is actually on left side....
# rightly skedwed....
hist(my_boston_df$medv)


