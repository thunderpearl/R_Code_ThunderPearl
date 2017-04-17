# Create a character vector with length of number-of-rows-of-iris-dataset, 
# such that, each element gets a character value - "greater than 5??? if the 
# corresponding 'Sepal.Length' > 5, else it should get "lesser than 5???.


output <- character(nrow(iris))

for(i in c(1:nrow(iris)))
{
  if(iris$Sepal.Length[i] > 5)
  {
    output[i] <- "Greater than 5"
  }
  
  else
  {
    output[i] <- "lesser than 5"
  }
}
print(output)

# the class of the output will be character.........
# class(print(output))...