num1 <- 11
num2 <- 12

operator <- readline(prompt = "Please enter the operator you wanna use....")

# switch case will give result on the basis of operator selected
switch(operator,
       "+" = print(paste("Addition of two numbers is:-", num1 + num2)),
      "-" = print(paste("Subtraction of two numbers is:-", num1 - num2)),
      print("default statement")
      )

