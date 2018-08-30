
# We have a binary data which holds gre marks of students and whether they are admitted to 
 # applied university or not....

my_gre_data <- read.csv("binary.csv")


# rank tells the rank of the schools they are coming from 
head(my_gre_data)

str(my_gre_data)


# trying the histogram of data's gre column
hist(my_gre_data$gre)


# Brining the data in between the range of 0 and 1
my_gre_data$gre <- (my_gre_data$gre - min(my_gre_data$gre))/(max(my_gre_data$gre) - min(my_gre_data$gre))

hist(my_gre_data$gre)





my_gre_data$gpa <- (my_gre_data$gpa - min(my_gre_data$gpa))/(max(my_gre_data$gpa) - min(my_gre_data$gpa))
my_gre_data$rank <- (my_gre_data$rank - min(my_gre_data$rank))/(max(my_gre_data$rank) - min(my_gre_data$rank))



my_gre_data

my_ran <- sample(400,300)

my_ran


my_train_data <- my_gre_data[my_ran,]
dim(my_train_data)
head(my_train_data)



my_test_data <- my_gre_data[-my_ran,]
dim(my_test_data)
head(my_test_data)




# For neural network we will be using a library called neuralnet
library(neuralnet)


set.seed(4321)


my_n_net1 <- neuralnet(admit~gre+gpa+rank, data = my_train_data, hidden = 1, err.fct = "ce", 
                       linear.output = FALSE)


my_n_net1


# Let's plot our neural network
plot(my_n_net1)




my_n_net2 <- neuralnet(admit~gre+gpa+rank, data = my_train_data, hidden = 2, err.fct = "ce", 
                       linear.output = FALSE)


my_n_net2


# Let's plot our neural network
plot(my_n_net2)





my_n_net3 <- neuralnet(admit~gre+gpa+rank, data = my_train_data, hidden = 3, err.fct = "ce", 
                       linear.output = FALSE)


my_n_net3


# Let's plot our neural network
plot(my_n_net3)





