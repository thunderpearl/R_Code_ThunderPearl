# Function in R is same as function in other programming languages

function1 <- function(a)
{
  cat("Printing cube of the ",a," numbers","\n")
  for(x in 1:a)
  {
    cat("The cube of ",x," is",x^3,"\n")
  }
}
# Calling the function...
function1(35)