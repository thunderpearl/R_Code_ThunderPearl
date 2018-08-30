
library(MASS)


head(Cars93)

str(Cars93)


my_cars <- Cars93


class(my_data_frame1)


print(my_data_frame1)


# This will create the table between categorical values and will give the 
 # number of counts for the records matching with two conditions....
my_data_table1 <- table(my_cars$Type,my_cars$AirBags)


print(my_data_table1)

# Applying chi_square function
my_chi1 <- chisq.test(my_data_table1)

print(my_chi1)



