

# Installing few packages


# This type of installation actually resolve the dependencies 
install.packages("car",dependencies = TRUE)
install.packages("flexsurv",dependencies = TRUE)
install.packages("KMsurv",dependencies = TRUE)
install.packages("e1071",dependencies = TRUE)
install.packages("res",dependencies = TRUE)
install.packages("survival",dependencies = TRUE)



# Lets load the packages into the memory
library(car)
library(flexsurv)
library(KMsurv)
library(e1071)
library(res)
library(survival)



# Description of the data is here
# https://warwick.ac.uk/fac/sci/statistics/apts/students/resources-1617/gbcs.txt

# Setting the working directory to the r_scripts

# Loading the gbcs.csv

my_gbcs <- read.csv("gbcs.csv")


# attach is an important function ....
attach(my_gbcs)


names(my_gbcs)


print(age)


head(my_gbcs)


dim(my_gbcs)


# rectime means breast cancer reccurrence time....


summary(my_gbcs)

hist(age)

menopause


table(menopause)


table(hormone)


# Positively skewed data
hist(prog_recp)

par(mfrow=c(1,2))
plot(prog_recp)

# We do the log of data to remove the skew and to better understand the data....
plot(log(prog_recp))


par(mfrow=c(2,4))

plot(rectime~age)
plot(rectime~id)
plot(rectime~menopause)
plot(rectime~hormone)
plot(rectime~prog_recp)
plot(rectime~estrg_recp)
plot(rectime~censrec)


# With the above plots, we are not getting any good associations....


# We would like to see the correlation matrix
my_corr_matrix <- cor(my_gbcs)

my_corr_matrix


# Let's draw plot this correlation matrix
library(corrplot)

par(mfrow=c(1,1))
corrplot(my_corr_matrix)


# Creating surival object

my_surv_ogbcs <- Surv(rectime,censrec)

print(my_surv_ogbcs)


my_fir_km <- survfit(my_surv_ogbcs~1,type="kaplan-meier")


my_fir_fh <- survfit(my_surv_ogbcs~1,type = "fleming-harrington")


my_fir_km <- survfit(my_surv_ogbcs~1,type = "fh2")



# Plotting different curves

plot(my_fir_km,xlab = "days", ylab = "survival_ship")


# dotted lines are confidence intervals
# This shows 25 to 50 percent of the people will make without occurrence of cancer ....
print(my_fir_km,print.rmean = TRUE)

# restricted mean means when we follow patients for given time then they will survive on 
 # average till that rmst time....

# 58 events were useful and rest were not....
