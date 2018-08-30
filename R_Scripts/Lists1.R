# Working with lists....

# a list have different kind of data types.....
# We can have lists inside the lists....
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

list_data[4] <- "New Element"
print(list_data)

# Removing the latest added element
list_data[4] <- NULL

# checking the element on the 4th position in the list
print(list_data[4])

cat("################### List after manipulation ######################")
cat()
print(list_data)

# Merging the two lists
list1 <- list(1,2,3,4)
list2 <- list("mon","tue","wed")
combo_of_two_lists <- c(list1,list2)
print(combo_of_two_lists)

class(combo_of_two_lists)

# So, combination of two lists will also give the lists

# List can be converted into the vector as well by unlisting them
print(unlist(combo_of_two_lists))
class(unlist(combo_of_two_lists))
# By unlisting we will get the vectors.....................................

