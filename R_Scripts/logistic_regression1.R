

# AIC value should be less when comparing different models....

# Residual deviance should be less which means we are including explanatory variables

# Co-efficients tells the value response variable is increasing or decreasing when their 1 unit
 # is increased....


# my_data_frame = data.frame(Year= ,Lag1 = )

# Below will give the probability of being 1
# predict(my_logistic_model1,my_data_frame)




?mtcars


head(mtcars)


my_logis_model2 <- glm(formula=am~wt+disp, data = mtcars, family = "binomial")


summary(my_logis_model2)


my_dataframe1 <- data.frame(wt=2.620,disp=160)

my_predict1 <- predict(my_logis_model2,my_dataframe1,type="response")


print(my_predict1)
