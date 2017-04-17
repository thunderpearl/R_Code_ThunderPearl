# Modulous sign.
vec3 <- c(1,2,3,4,5,6,7,8,9)
vec4 <- c(2,3,4)

# There are two types of modulous signs in R, %% and %/% \n

cat("Using the sign %% for the two vectors vec3 and vec4 \n")

# This will give the remainders \n

result1 <- vec3%%vec4
cat("Result is ",result1,"\n")

cat("Using the sign %/% for the two vectors vec3 and vec4 \n")

# This will give the quotients

result2 <- vec3%/%vec4
cat("Result is ",result2,"\n")