#Inflation and MSP

#To read the data from working directory.
##First set the directory where the dataset present
### To delete the header write header false
#### to skip the unnecessary initial rows use skip
my_data <- read.csv("Inflation_selected.csv",header = FALSE, skip = 7)

# To make a dataframe of own choice columns 

my_data_year <- my_data[,2]

my_data_description <- my_data[,3]

my_data_inflationall <- my_data[,5]

my_data_inflationfood <- my_data[,6]

#To check the length of the vectors

length(my_data_inflationfood)

# To make a new dataframe with the above created vectors

inflation_data <- data.frame(my_data_year, my_data_description, my_data_inflationall,
                             my_data_inflationfood)
#To view the dataframe

View(inflation_data)

#To train data upto a few rows

inflation_data_train <- inflation_data[c(1:250),]

# To find the regression, use the lm function

inflation_relation <- lm(my_data_inflationall~my_data_inflationfood)

#To plot the data


# linear regressoin is not working because 9% Adjusted R-Square 
summary(inflation_relation)


my_correlation <- cor(data.frame(inflation_data_train$my_data_inflationall,
                                 inflation_data_train$my_data_inflationfood))

library(corrplot)

corrplot(my_correlation)


plot(inflation_data_train$my_data_inflationall, inflation_data_train$my_data_inflationfood,
     col = inflation_data_train$my_data_description)


plot(inflation_data_train$my_data_inflationall, inflation_data_train$my_data_inflationfood,
     col = inflation_data_train$my_data_description)


nlevels(inflation_data_train$my_data_description)

summary(inflation_data_train$my_data_description)

head(inflation_data_train)


my_general_index <- which(inflation_data_train$my_data_description=="A) General Index")

print(my_general_index)

my_general_index_df <- inflation_data_train[my_general_index,]


head(my_general_index_df)


my_gen_lm1 <- lm(my_general_index_df$my_data_inflationall
                 ~my_general_index_df$my_data_inflationfood)


summary(my_gen_lm1)

plot(my_general_index_df$my_data_inflationall
     ,my_general_index_df$my_data_inflationfood,type = "o", col = "blue",
     xlim = c(100,180),ylim = c(-30,50))



# Lets try decision tree
head(inflation_data_train)

library(tree)

my_decision_tree1 <- tree(my_data_description~.,inflation_data_train, method = "class")
