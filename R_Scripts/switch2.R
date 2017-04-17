# Switch case in R, it is a bit different from usual switch cases of other
 # programming languages but it serves the same function....

vector1 <- c(112,110,114,200,400)
value <- "hello"

# First is the expression to be testedm, rest are cases and final is default value...
# In switch cases we have to use "=" for cases...
switch(value,
       "yohoo" = {print("I am yohoooo")},
       "meh" = {"I am meh"},
       "hello" = {sum(vector1)},
       print("value did not matched with any case..."))
