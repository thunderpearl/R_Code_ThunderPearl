# Testing the repeat loop in R
var1 <- 3
repeat
{
  print(var1)
  var1 <- var1 + 1
  
  if(var1 > 6)
  {
    break
  }
}

var2 <- 1:8
for(i in var2)
{
  print("Hello")
}