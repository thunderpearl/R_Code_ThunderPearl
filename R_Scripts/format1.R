# This script is writtent to test the format function of the R...
num1 <- 24.234252534552

# Display total number of digits including decimal as well and last digit will get
 # round off.
# All the results will come as character
print(format(num1,8))
#..........................................................................

# This will display number in the scientific manner and instead of number we can 
 # pass a vector as well...
print(format(num1, scientific = TRUE))
#..........................................................................

# This width parameter is not working though it is suppose to put some space in 
 # front of number as defined in "width"
result3 <- format(num1, width = 8)
print(result3)
#..........................................................................

# This should have set the number to left and created space of width 4 in right
 # but as above it is not working either..
print(format(num1,width = 4,justify = "l"))
#..........................................................................

string1 <- "Hey! how are you doing?"
# nchar will give number of characters in a string including the blank spaces.
print(nchar(string1))
#..........................................................................

# Will print all the characters to upper case....
print(toupper(string1))

# Will print all the character to the lower cases...
print(tolower("HELLO"))

# Will print the substring from a string, second parameter is for starting position 
 # and third parameter is for ending string position
print(substring(string1,3,8))
