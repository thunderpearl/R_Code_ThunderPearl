
my_x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# The resposne vector.
my_y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
my_relation <- lm(my_y~my_x)

# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)



# Applying the Linear Regression on the mtcars data

fix(mtcars)

my_model1 <- lm(hp~drat+wt+qsec,data = mtcars)
summary(my_model1)

print(my_model1)


my_data1 <- data.frame(drat = 3.85,wt = 2.32,qsec = 18.61)

class(my_data1)


hp_predict1 <- predict(my_model1,my_data1)

print(hp_predict1)




my_model2 <- lm(hp~wt+qsec,data = mtcars)
summary(my_model2)

print(my_model1)


my_data2 <- data.frame(wt = 2.32,qsec = 18.61)

class(my_data1)


hp_predict1 <- predict(my_model2,my_data2)

print(hp_predict1)
