# Trying ANOVA Test

my_group1 <- c(10,11,12,14,17)
my_group2 <- c(14,16,15,11,12)
my_group3 <- c(22,25,24,26,29)


# Combining the data column wise
my_data <- cbind(my_group1, my_group2, my_group3)


# This will give the matrix but we need a data frame
class(my_data)


my_data_frame1 <- data.frame(cbind(my_group1, my_group2, my_group3))

# This is a dataframe now
class(my_data_frame1)


print(my_data_frame1)


# stacking this data into the one vector
my_stacked_data1 <- stack(my_data_frame1)


# This stacked data will give the stacked vector but also label the data with their
 # column names
print(my_stacked_data1)


summary(my_stacked_data1)


my_anove_result1 <- aov(values ~ ind, data = my_stacked_data1)


summary(my_anove_result1)

print(summary(my_anove_result1))