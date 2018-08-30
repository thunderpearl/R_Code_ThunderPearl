city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

# This will give us data frame..................................................
data_frame1 <- data.frame(city,state,zipcode)

# This will give us matrix.....................................................
data_bind1 <- cbind(city,state,zipcode)

cat("##################### data frame format is as below #################### \n")
print(data_frame1)
cat("########################## data bind format is as below ################# \n")
print(data_bind1)

cat("The type of data_frame1 is ")
class(data_frame1)

cat("The type of data_bind1 is ")
class(data_bind1)
  
# Now, lets see and check what rbind method will do for both these data structures...
data_rbind1 <- rbind(data_frame1,data_bind1)
print(data_rbind1)

# This below code will produce a data frame.......................................
cat("The class of data_rbind1 is ",class(data_rbind1),"\n")
# Hence, rbind can work on both the matrix and dataframe together.................
city <- c("Seattle","Hartford","Newyork","Washington")
rating <- c(7,7,8,8)
 
data_frame2 <- data.frame(city,rating)
 
# This is the second data frame..................................................
print(data_frame2)

# Merging two data frames........................................................
# This merging will take the intersection of the two dataframes with the city....
data_merge1 <- merge(data_frame1,data_frame2,by = c ("city"))

# Printing the outcome of the merge..............................................
# R is an case sensitive language hence, to match something every single character 
 # has to match
print(data_merge1)


# Merging like left Join .........................................................
data_merge2 <- merge(data_frame1,data_frame2,by = c("city"), all.x = TRUE)
print(data_merge2)

# Merging like right Join.........................................................
data_merge3 <- merge(data_frame1,data_frame2,by = c("city"), all.x = TRUE)
print(data_merge3)

# Merging like full Join..........................................................
data_merge4 <- merge(data_frame1,data_frame2,by = c("city"), all = TRUE)
print(data_merge4)