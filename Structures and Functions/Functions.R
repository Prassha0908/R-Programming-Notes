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




## LOGICAL FUNCTION
# The most commonly used logical functions are any() & all(). Apart from this which() is also used.

# any() -> if any value satisfies the condition then returns TRUE.
# all() -> return TRUE only if all the elements satisfies the condition.
# which() -> returns the position of TRUE elements.

x <- c(-22,12,43,-3,43,5,-34,65)

any(x>1)       # TRUE
all(x>1)       # FALSE
which(x>1)     # 2 3 5 6 8  




## MATH FUNCTIONS 
x <- 1/0
x             # Inf

x <- log(0)
x             # -Inf

is.infinite(x)    # TRUE
is.finite(x)      # FALSE

sqrt(3.2312)      # 1.797554
exp(1)            # 2.718282

# If the input value goes beyond the domain of a particular function,then the function returns NAN.



## ROUNDING FUNCTION

x <- 34.1632

# Rounds upwards to the nearest number.
ceiling(x)       # 35
ceiling(-21.6)   # -21


# Rounds downward to the nearest number.
floor(x)         # 34
floor(-23.9)     # -24
floor(43.99)     # 43


# Truncates the decimal part (drops everything after the decimal)
trunc(x)         # 34
trunc(12.98452)  # 12

# Rounds to the nearest value, optionally to a specific number of decimal places.

round(x)            # 34
round(x, digit=3)   # 34.163
round(23.654, 2)    # 23.65
round(123.654, -1)  # 120

# Rounds to nearest, with “round to even” rule on .5
round(3.5)      # 4
round(2.5)      # 2

round(3.6)      # 4
round(2.6)      # 3
round(2.4)      # 2


# Rounds to a specified number of significant digits, not decimal places.
signif(12.34,3)         # 12.3
signif(0.12413,3)       # 0.124
signif(1.00423,3)        # 1
signif(123456.234,3)    # 123000



## HYPERBOLIC FUNCTIONS & TRIGONOMENTRIC FUNCTION
# These gives the obvious values for hyperbolic and trigonometric functions.

sinh(2)    # 3.62686
sin(2)     # 0.9092974
tanh(2)    # 0.9640276
tan(2)     # -2.18504

# Similarly for acos, asin, atan, cos, cosh, acosh, atanh, sinpi, cospi  




## EXTREME FUNCTION
max(c(1,2,3),c(4,1,3),c(2,3,4))    # 4
pmax(c(1,2,3),c(4,1,3),c(2,3,4))   # 4 3 4

min(c(1,2,3),c(4,1,3),c(2,3,4))    # 1
pmin(c(1,2,3),c(4,1,3),c(2,3,4))   # 1 1 3





## STATISTICAL FUNCTION
# In statistics, the study of a population often begins with a random sample of it.

sample(1:6, size = 4)      # 6 1 3 5

sample(1:6, size = 4, replace = TRUE)    # 6 6 5 5

# Although sample() is often used to draw samples from a numeric vector, it also works with other types of vectors.
sample(letters, size = 5)    # "e" "l" "w" "p" "u"

sample(LETTERS, size = 5, replace = TRUE)    #  "E" "E" "Z" "Y" "D"

sample(list(a = 1,b =c(2,4,6), c = c("a","b")),size = 2)

                     #  $a
                     #   [1] 1
                     #  $c
                     #   [1] "a" "b"
 


# sample() function supports weighted sampling, that is, we can specify a probability for each element.
grade <- sample(c("A","B","C"), size = 9, replace = TRUE,prob = c(0.5,0.25,0.75))

grade             # "C" "C" "C" "C" "B" "A" "C" "C" "C"

table(grade)  # Use table() to see the occurrence of each value.
      #   grade
      #   A B C 
      #   1 1 7 



  
