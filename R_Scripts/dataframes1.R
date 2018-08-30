# Dataframes in R

emp_id <- c(1:5)
emp_name <- c("meliodas","elizabeth","baan","merlyn","elisha")
emp_salary <- c(11000,12000,8000,9000,7500)

mydataframe1 <- data.frame(emp_id,emp_name,emp_salary)

mydataframe1



vec1 <- c(1:10)
vec2 <- c(11:20)
vec3 <- c(21:30)
vec4 <- c(31:40)

mydataframe2 <- data.frame(vec1,vec2,vec3,vec4)


mydataframe2



# We can access the dataframe's rows and columns by 

# It will print the whole dataframe
mydataframe2[,]

# It will print the first 4 rows and all columns
mydataframe2[c(1,2,3,4),]

# It will print all rows and 3 columns.
mydataframe2[,c(1,2,3)]



# We can stack all the columns of the dataframe into a vector but all those
 # should be of same datatype
mystack1 <- stack(mydataframe2)

mystack1

# Third column is indicator which shows where does the element belongs


# Unstacking is also possible in R
# By unstacking, we will be getting the dataframes back....

myunstack_dataframe1 <- unstack(mystack1)
myunstack_dataframe1 




# We can create a big dataframe by combining the dta column wise
mycom_df1 <- cbind(mydataframe2,mydataframe2,mydataframe2)
mycom_df1

class(mycom_df1)

# rbind will stack data below other dta
mycom_df2 <- rbind(mydataframe2,mydataframe2,mydataframe2)
mycom_df2

class(mycom_df2)


# If our dataframe is too big to fit into console then there is an alternative
 # way to see the large dataframe 
fix(mycom_df2)



# Transposing the data frame

myfranspose1 <- t(mycom_df2)
myfranspose1



fix(myfranspose1)

# class of that transposed dataframe is matrix
class(mytranspose1)


# We can convert matrix into dataframe as well
new_dataframe <- as.data.frame(mytranspose1) 



mycom_df2

# We can see few data of a dataframe

head(mycom_df2,10)

tail(mycom_df2,4)


# By default head and tail will give 6 rows, if we do not pass
 # the secomd parameter


# If we wanna remove those rows which have NA in it 
# It will only show those rows which have data in all the columns rest data 
 # will be left from the data.
na.omit(mycom_df2)
head(mycom_df2) 



# Excluding the data which have NA in it
# It will print dataframe considering first column where NA is not there
 # rest columns can have NA.
mydataframe2[!is.na(mydataframe2$vec1),]



# checking the work flow of the above commands
is.na(mydataframe2$vec1)


!is.na(mydataframe2$vec1)

# Now when we will pass these as index values inside the dataframe 
 # then it will print all those values where TRUE 



# Getting specific data
mydataframe2[which(mydataframe2$vec1 > 8),]  


# We can achieve same thing by below command
mydataframe2[which(mydataframe2[,1] > 8),]



# ERROR
# Adding multiple conditions inside "which"
# We just need to add & in that

# This below Code is giving ERROR....
mydataframe2[which(mydataframe2[,1]>4 & mydataframe2[,2]>10)]





# Checking the "attach" functionality

# Creating a seprate dataframe
mydataframe3 <- data.frame(c(1:10),c(5:14))

mydataframe3 


names(mydataframe3) <- c("col1","col2")

mydataframe3


# Now using "attach" function
attach(mydataframe3)

# Now, we can access the columns directly
col1
col2


