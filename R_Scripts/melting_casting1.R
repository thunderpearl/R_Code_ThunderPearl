# This script is all about melting and casting in R...................................

# We are printing the ships here.....................................................
library(MASS)

print(ships)

melting_result1 <- melt(ships, id = c("type","year"))

# Printing the melted data
print(melting_result1)