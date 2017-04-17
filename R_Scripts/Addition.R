# We are adding two vectors here.
# Although vectors should be of same length so that corresponding element will get
 # added.
# But, if some how one vector is smaller then bigger vector must be multiple of the
 # smaller vector.....
vec1 <- c(1,2,3)
vec2 <- c(2,3,4)
cat("Adding vectors vec1 and vec2 \n")
result1 <- vec1 + vec2
cat("Result of the addition is ",result1,"\n")

# Now, adding two vectors of non equal lengths
vec3 <- c(1,2,3,4,5,6,7,8,9)
vec4 <- c(2,3,4)
cat("Adding vectors vec3 and vec4 \n")
result2 <- vec3 + vec4
cat("Result of the addion is ",result2,"\n")
# These same rules applied for subtraction, multiplication and division.
