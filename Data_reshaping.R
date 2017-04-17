city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

data_frame1 <- data.frame(city,state,zipcode)
data_bind1 <- cbind(city,state,zipcode)

cat("##################### data frame format is as below #################### \n")
print(data_frame1)
cat("########################## data bind format is as below ################# \n")
print(data_bind1)

cat("The type of data_frame1 is ")
class(data_frame1)

cat("The type of data_bind1 is ")
class(data_bind1)
  