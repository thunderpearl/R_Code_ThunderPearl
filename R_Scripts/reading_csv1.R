# This script is for reading the csv file and performing the task over that..........
data <- read.csv("Funding.csv")

# Printing the csv file which we just read......................................
print(data)

# knowing the class of the data.................................................
# Whatever the document we read using R all are converted in data frames. Data frames
 # are easy to handle and manipulate
class(data)
# This below line will give the number of columns
print(ncol(data))
# This below line will give number of rows
print(nrow(data))

summary(data)

str(data)

colnames(data)
rownames(data)


# See for more methods in csv. We can filter the csv and then write that result 
 # into the another csv as well.

# The subset function is very important, first parameter is the data itself and 
 # second parameter is the expression according to which subset has to be created
  # from the real data...............................................................
max_raisedAmt <- subset(data, raisedAmt == max(raisedAmt))
print("Data with the Highest raised amount is ")
print(max_raisedAmt)

print("Data with the city as Chicago ")
chicago_data <- subset(data,city == "Chicago")
print(chicago_data)

print("Data with the round as seed ")
round_data <- subset(data,round == "seed")
print(round_data)

