## FUNCTIONS 

# Syntax :
  #   function_name <- function(arg1,agr2){
  #     Function Body
  #   }


add <- function(n1,n2){
  n1+n2
} 

add(34,52)    # 86

add(23,44,21)  # Shows warning as the number of argument is different.


add3 <- function(n1,n2,n3){
  n1+n2+n3
}

add3(23,44,21)    # 88


power <- function(n1,n2){
  n1^n2
}

power(2,3)       # 8


f1 <- function(x){
  if(x %% 2 == 0){
    cat(x,"is even \n")
  } else {
    cat(x,"is odd \n")
  }
}

f1(32)          # 32 is even

for(i in 1:5){
  f1(i)
}

                # 1 is odd 
                # 2 is even 
                # 3 is odd 
                # 4 is even 
                # 5 is odd 


# Functions automatically return the last evaluated expression, but using return() makes it explicit and helps in early exit.

add <- function(n1,n2){
  return(n1+n2)
}
add(32,34)     # 66

# Both without return() & with return() work the same, but return() is helpful in complex logic or conditional exits.


# We can assign default value to function parameters.
new <- function(name = "user"){
  cat("Hello",name)
}
new()          # Hello user

new("Sam")     # Hello Sam

new("Ajay")



# Position arguments are matched based on order.
employee <- function(name,age){
  cat("Name:",name,"\nAge:",age)
}
employee("Bob",23)
              
               # Name: Bob
               # Age: 23

employee(23,"Bob")

               # Name:23
               # Age: Bob


# Named arguments are matched by name and can be in any order.
employee(age=23,name="Bob")
          
               # Name: Bob
               # Age: 23


# local variable exist only inside a function.
# global variable exist in the environment (i.e., outside the function).

x <- 99

new <- function(){
  x <- 100
  cat(x)
}

cat(x)    # 99
new()     # 100

# This prevents accidental overwrites


## Logical Function

# The most commonly used logical functions are any() & all(). Apart from this which() is also used.

# any() -> if any value satisfies the condition then returns TRUE.
# all() -> return TRUE only if all the elements satisfies the condition.
# which() -> returns the position of TRUE elements.

x <- c(-22,12,43,-3,43,5,-34,65)

any(x>1)       # TRUE
all(x>1)       # FALSE
which(x>1)     # 2 3 5 6 8



  
