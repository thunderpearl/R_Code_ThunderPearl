# Applying the multi regression

print(iris)

?iris


print(head(iris))


# creating the multi regression model
my_multi_reg1 <- lm(Sepal.Length~Sepal.Width+Petal.Length+Petal.Width,data = iris)

print(my_multi_reg1)


print(coef(my_multi_reg1)[1])



print(coef(my_multi_reg1)[2])
      
      

print(coef(my_multi_reg1)[3])
      

      
print(coef(my_multi_reg1)[4])      
            
      

# So we can create our own equation to predict the response variable on the basis 
 # of predictors

# y = coef(my_multi_reg1)[1] + x1*coef(my_multi_reg1)[2] + x2*coef(my_multi_reg1)[3]
 # + x3*coef(my_multi_reg1)[4]

# With this above equation we can predict the new value of response variables