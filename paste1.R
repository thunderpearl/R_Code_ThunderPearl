# This program will show the use of paste function

string1 <- "Hello"
string2 <- "welcome"
string3 <- "the"
string4 <- "office"
string5 <- ", I hope you will do great here."


# Now, we will be using the paste function to concatinate the strings...
# This will automatically put spece between each string...
print(paste(string1,string2,string3,string4,string5))
#........................................................................

# This below "sep" parameter will seperate every string with the "-"
print(paste(string1,string2,string3,string4,string5,sep = "-"))
#.........................................................................

# Somehow collapse is not working. It is suppose to remove the space between strings
 # like in string5 but not in two words.
# But, that functionality is not working.....
print(paste(string1,string2,string3,string4,string5,sep = "-", collapse = ""))