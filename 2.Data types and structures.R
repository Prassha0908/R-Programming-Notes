# Data types and Structures

## Data Type
x <- 6.3421
class(x)   # numeric
typeof(x)  # double

y <- 5
z <- x>y
class(z)  # logical
typeof(z) # logical

w <- 10L  
class(w)  # integer
typeof(w) # integer

c <- "hello"
class(c)  # character
typeof(c) # character

a <- 4+4i
class(a)   # complex
typeof(a)  # complex


# raw data type is used to work with data at byte level 
r <- as.raw(x)   # instead of as.raw() , charToRaw() can also be used.
class(r)   # raw
typeof(r)  # raw


## Convertion of data type

xi <- as.integer(x)
class(xi)

wi <- as.character(w)
class(wi)

## To check type

is.integer(x)    # FALSE
is.character(c)  # TRUE
is.numeric(x)    # TRUE


## Vector 

# NUMERIC VECTOR 
x <- c(1,2,3,4)
x             # 1 2 3 4

x <- c(4:10)
x             # 4 5 6 7 8 9 10

x <- c(-2:2)
x             # -2 -1 0 1 2

x <- seq(1,9,2)   # from 1 to 9 with difference of 2 
x            # 1 3 5 7 9 


# LOGICAL VECTOR
x <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
x

x <- (1>2)
x            # FALSE

x <- c(2,3) > c(1,2,-1,3)
x

