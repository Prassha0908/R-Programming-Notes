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


a <- 0
if(a > 0){
  print("Positive Number")
  
} else if (a < 0){
  print("Negative Number")

} else{
    print("The number is Zero")

}

# "The number is Zero"


g <- 78
if(g >= 90){
  print("A")
} else if(g <= 89 && g >= 70){
  print("B")
} else if(g <= 69 && g >=50){
  print("C")
} else {
  print("FAIL")
}

# B


a <- -23
if(a >= 0 ){
  if(a %% 2 == 0){
    print("Its positive even number");
  
    }else{
    print("Its positive odd number");
  }

  }else{
    if(a %% 2 == 0){
    print("Its negative even number");
  
    } else{
        print("Its negative odd number");
      }
}

# "Its negative odd number"


  

## SWITCH FUNCTION

a <- 2
switch(a,"first","second","third")


#  "second"

x <- 23
y <- 43

operator <-"add"
switch(operator,
       add = x + y,
       sub = x - y,
       mul = x * y)

# 66


