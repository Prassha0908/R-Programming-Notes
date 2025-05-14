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
x            #  TRUE TRUE TRUE FALSE


# CHARACTER VECTOR
# There are two different ways to create a character vector either by typing string between double quotes(””) or single quotes(”).

x <- "Hello world"
y <- 'Hello world'
x             # "Hello world"
y             # "Hello world"


x <- c("a!","b#","c3")
x            # "a!" "b#" "c3"

x <- letters
x           # prints "a" - "z" 

x <- LETTERS
x          # prints "A" - "Z"



# COMPLEX VECTOR

x <- 4 + 3i
y <- 3 + 4i
x+y        # 7 + 7i

x <- 4 - 3i
x+y       # 7 + 1i



# RAW VECTOR

# syntax -> raw(length)

x <- raw(5)
x        # 00 00 00 00 00

# character to raw
x <- charToRaw("R Programming")
x        # 52 20 50 72 6f 67 72 61 6d 6d 69 6e 67


# SUBSETTING A VECTOR

# Subsetting a vector means accessing some specific entries or a subset of the vector.


x <- c(0:12)     # index value starts from 1
x
x[2]            # 1 
x[c(2,4,6)]     # 1 3 5
x[3:6]          # 2 3 4 5

x[-2]           # 0 2 3 4 5 6 7 8 9 10 11 12
# eliminates the value in that position (x[2] -> 1)

x[c(TRUE,FALSE,TRUE, FALSE)]   #  0 2 4 6 8 10 12
# Logical indexing selects only elements corresponding to TRUE
# If the logical vector is shorter than data, R recycles it. 



# OVERWRITING OR REPLACING ELEMENTS

x[5] <- 10
x             # 0  1  2  3 10  5  6  7  8  9 10 11 12

x[c(2,4,6)] <- 0.1
x             # 0.0 0.1 2.0 0.1 10.0 0.1 6.0 7.0  8.0  9.0 10.0 11.0 12.0

x[c(2,4,5)] <- c(1,2,3)
x             # 0.0  1.0  2.0  2.0  3.0  0.1  6.0  7.0  8.0  9.0 10.0 11.0 12.0

x[2:6] <- 0
x            # 0  0  0  0  0  0  6  7  8  9 10 11 12



# NAMED VECTORS

x <- c(a=1,b=3,c=2)
x        # a b c 
         # 1 3 2 

x <- c(a=c(1:3),b = 0)
x        # a1 a2 a3 b
         # 1  2  3  0

x["a2"]  # 2

names(x)  # "a1" "a2" "a3" "b"


# names can be changed

names(x) <- c("w","x","y","z")

x["x"]     # x
           # 2

x["z"]     # z
           # 0

names(x)   # "w" "x" "y" "z"


# EXTRACTING AN ELEMENT

# [] -> creates subset of vector , [[]] -> extracts element from the vector

x[["z"]]  # 0

class(x)  # "numeric" 
# syntax -> class(object)


# arithmetic operations can also be performed in numeric vector

x <- x+2
x       # w x y z 
        # 3 4 5 2 



