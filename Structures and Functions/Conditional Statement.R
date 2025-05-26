## if - Statement 

a <- 5
if(a >= 5){
  print("The value is greater than or equal to 5")
}

#  "The value is greater than or equal to 5"


a <- -2
if(a > 0){
  print("Positive Number")
}
if(a < 0){
  print("Negative Number")
}

#  "Negative Number"



a <- 5
if(a %% 2 == 0){
  print("Even Number")
}
if(a %% 2 != 0){
  print("Odd Number")
}

#  Odd Number

# if condition will check for first element of a vector only. 
# If condition with vector shows warning.

a <- c(1,2,3)
if(a > 2){
  print(a)
}

# Error in if (a > 2) { : the condition has length > 1


# To overcome this any(), all() functions are used.
# If we want to check if any value that satisfies the condition, then use any()

if(any(a > 2)){
  print("Number greater than 2")
}

# "Number greater than 2"

# If we want to check if all value that satisfies the condition, then use all()

if(all(a > 2)){
  print("All satisfies the condition.")
}




## if-else  statement

a <- 3
if(a >= 5){
  print("The value is greater than or equal to 5")

  } else{
  print("The number is not greater than 5")
}

# "The number is not greater than 5"


a <- -2
if(a > 0){
  print("Positive Number")
  
  } else{
  print("Negative Number")
}

# Negative Number


a <- 321
if(a %% 2 == 0){
  print("Even Number")
} else{
  print("Odd Number")
}

# Odd Number
