# This program is for counting the words from a file...

# Scanning the file, telling that the type of data is character and by default R will
# seperate the data on the basis of new line and R will generate character vectors.

# If we have a lot of different types of data then we will provide the list of 
# data type.
file_read_vectors<-scan("I://Programming//R Programming//Data_Dir//student_names.txt", what=character())

# convert all the characters into the lower case
file_read_vectors <- tolower(file_read_vectors)
file_read_split <- strsplit(file_read_vectors,",")  # spliting on the basis of ","
file_read_unlist <- unlist(file_read_split) # unlisting the above list.
file_read_frequency <- table(file_read_unlist) # This will do the work and give us the frequencies of the words.
# Printing the result of file_read_frequency 
cat("############ Frequencies of different words inside the file is ##############")
cat()
print(file_read_frequency)
