# This script is to understand the sequence with some degree of increment...

# This will generate sequence from 1 to 8 with the increment of 1
seq1 <- 1:8
print(seq1)
class(seq1)


# This will also generate the sequence from 1 to 8 with the increment of 1 
seq2 <- c(1:8)
print(seq2)
class(seq2)

# This code will also generate a sequence from 2 to 16 with the increment of .35
seq3 <- seq(2,16,.35)
class(seq3)

cat("Data types of all the objects are integer")

# No matter what we put in vector, it will all get converted to charaters
print(c(3,4,5,6,7,8,"hello",TRUE))
class(c(3,4,5,6,7,8,"hello",TRUE))


# Accessing vector elements using position.
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

# Accessing vector elements using logical indexing.
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)

# Accessing vector elements using negative indexing.
x <- t[c(-2,-5)]
print(x)

# Accessing vector elements using 0/1 indexing.
y <- t[c(0,0,0,0,0,0,1)]
print(y)

# We can sort the vector elements as well
print(sort(c(3,4,5,7,6,8,9)))
