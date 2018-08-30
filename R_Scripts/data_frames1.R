# This script is all about data frames in R..........................................

# Actually, Data Frames are most important data types and we mostly try to deal in dataframes 
 # because we will extract the data from the dataframes.

# In R, a variable do not have any data type. Instead, it gets convereted into the datatype of 
 # the R object which we are using, hence R is called as dynamically typed language aka we can
  # change the data type of a variable again and again.

# Data frames are fairly important topic to be practiced

# Characteristics of data frames
 # Column names should be non-empty
 # The row names must be unique
 # The data stored in a data frame can be numeric, factor, or character type.
 # Each column should contain same number of elements.

emp_id <- c(1:5)
emp_name <- c("meliodas","elizabeth","baan","merlyn","elisha")
emp_salary <- c(11000,12000,8000,9000,7500)

# stingAsFactors defines if strings inside dataframe will be treated as factors or
 # simply strings(characters)
# Be default String is treated as factor for dataframe.
# We have to explicitly define our String as character if we want to.
data_frame1 <- data.frame(emp_id,emp_name,emp_salary,stringsAsFactors = FALSE)
print(data_frame1)


print(class(data_frame1$emp_name))

# To get the structure of the dataframe
str(data_frame1)

# Summary of data frame can be attained by
# Summary will give seperate information of every column according to their data type.
summary(data_frame1)

# This way we can access specific column of the data frame........................
print(data.frame(data_frame1$emp_id,data_frame1$emp_salary))

# Accessing more specific data from the data frame
# This will access the first 3 rows of the data frame and all the columns
print(data_frame1[1:3,])

# This will give 1 & 2 rows and 2 & 3 columns from the data frame.................
print(data_frame1[c(1,2),c(2,3)])

# Data frame can be expanded as well, means more columns can be added to the 
 # data frame
# This way we have added one more column to the data frame
data_frame1$anime <- c("sds","sds","sds","sds","sds")

print(data_frame1)

# For adding more rows to the data frame. It exactly means concatinating more 
 # data frames
# By Default string type of the data is considered as factor.
data_frame2 <- data.frame(
              emp_id = c(6,7,8),
              emp_name = c("naruto","sasuke","sakura"),
              emp_salary = c(13000,12900,12700),
              anime = c("NS","NS","NS")
)

# This rbind method will concatinate two data frames..............................
# Second Data Frame will come under first Data Frame and will get combined with the first data frame. 
final_data_frame <- rbind(data_frame1,data_frame2)
print(final_data_frame)

colnames(final_data_frame)
rownames(final_data_frame)

# Assignment can be done in three ways.
# =, <- and ->   i.e. by equal, left and right assignment.


# Trying the dataframe of uneven length.....

names <- c("meliodas","elizabeth","natsu","lucy","mavis","zeref")
power <- c(100000,99999,80000,75000,81000,85000)
clan <- c("demon","angel","demon","fairy","human","black_wizard")

# Now creating a dataframe using the above R - objects.
# In the dataframe number of rows must be equal for every column.
# If not then it will give the error
anime_data_frame <- data.frame(names,power,clan)


print(anime_data_frame)


# str() method will give information about the R-Objects
# sumary() method will tell about R-Objects in more details.

# We do not need to print, it will get print automaticlly.
str(anime_data_frame)

summary(anime_data_frame)


