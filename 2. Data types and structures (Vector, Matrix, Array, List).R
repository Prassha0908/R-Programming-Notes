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

##########################################################################

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


################################################################################

## MATRIX 

# Syntax -> matrix(data, nrow, ncol, byrow, dimname)

x <- matrix(c(1,2,3,4,5,6),nrow = 2, byrow = TRUE)  # either nrow or ncol 
x


# NAMING ROWS AND COLUMNS

rownames(x) <- c("r1","r2")
colnames(x) <- c("c1","c2","c3")

x     #     c1 c2 c3
      # r1  1  2  3
      # r2  4  5  6


x <- matrix(c(1,2,3,4,5,6),nrow = 2, byrow = TRUE, dimnames = list(c("a1","a2"),c("b1","b2","b3")))

x     #      b1 b2 b3    
      #   a1 1  2  3
      #   a2 4  5  6




# Extracting -> Getting a value or part of an object without changing the original object.
# Subsetting -> Selecting specific elements from a larger structure using conditions, positions, names, or patterns.
# Overwriting -> Replacing an existing value with a new one (i.e., modifying the object).




# EXTRACTING ELEMENTS 

x[1,2]     # 2

x[,2]      # a1  a2
           #  2  5

x[2,]      #  b1  b2  b3
           #   4  5   6


# can be extracted by row and column names also

x["a1","b3"]     # 3

x["a1", c("b2","b3")]   # b2  b3
                        #  2   3


# OMITTING OR OVERWRITING ELEMENTS 

# To delete or omit elements from a matrix,use negative indexes.

x[,-2]     #      b1  b3
           #  a1  1   3
           #  a2  4   6

# Here 2nd column is omitted.



x[2,2] <- 10
x                #      b1  b2  b3
                 #  a1  1   2   3
                 #  a2  4   10  6


x[1,] <- 4:6
x               #      b1  b2  b3
                #  a1  4   5   6
                #  a2  4   10  6


x[c(1,2),3] <- 12
x               #      b1  b2  b3
                #  a1  4   5   12
                #  a2  4   10  12

# A matrix is a vector represented and accessible in two dimensions; how-ever, it is still a vector in its nature. This allows us to use a one-dimensional accessor for vectors to subset a matrix.



# An inequality will return another logical matrix of equal size.

x>5         #     b1    b2   b3
            # a1 FALSE FALSE TRUE
            # a2 FALSE  TRUE TRUE


# ARITHMETIC OPERATIONS 

x + (2*x)       #    b1  b2  b3
                # a1 12  15  36
                # a2 12  30  36

a <- matrix(c(1,2,3,4), ncol = 2, byrow = FALSE)
a               #       [,1] [,2]
                # [1,]    1    3
                # [2,]    2    4


a%*%a           #       [,1] [,2]
                # [1,]    7    15
                # [2,]    10   22

# Matrix multiplication 


#######################################################################################


## ARRAY

# Syntax -> array(data, dim = (nrow, ncol, nmat), dimnames = names)


rownames <- c("r1","r2")
colnames <- c("c1","c2","c3")

x <- array(data = 1:12, dim = c(2,3,2), dimnames = list(rownames,colnames ))
x               # , , 1
                #     c1 c2 c3
                #  r1  1  3  5
                #  r2  2  4  6

                # , , 2
                #     c1 c2 c3
                #  r1  7  9 11
                #  r2  8 10 12


# 2 vectors with different length 
vec1 <- c(1,2,3,4)
vec2 <- c(4,5,6,7,8,9)

# R repeats values from the beginning to fill the array.
# So y -> 1,2,3,4,4,5,6,7,8,9,1,2
# R fills column-wise (just like in matrices), layer by layer.

y <- array(data = c(vec1,vec2), dim = c(3,2,2))
y         # , , 1
          #       [,1] [,2]
          # [1,]    1    4
          # [2,]    2    4
          # [3,]    3    5
          
          # , , 2
          #        [,1] [,2]
          # [1,]    6    9
          # [2,]    7    1
          # [3,]    8    2



# SUBSETTING AN ARRAY 

x[2,3,2]   # 12 
# Element in 2nd row, 3rd column, 2nd layer


x[1,,1]    #  c1  c2  c3
           #   1   3   5


x["r1","c2",1]   # 3


###############################################################################


## LIST 

# list can contain elements of different data type

x <- list(a=c(1:5), b = c("a","b","c","d"))
x

#  $a
#   1 2 3 4 5

#  $b
#   "a" "b" "c" "d"

names(x)   # "a"  "b"


x <- list(c(TRUE,FALSE,TRUE,TRUE),c(66,44,99),"list")
x
          #   [[1]]
          #   [1]  TRUE FALSE  TRUE  TRUE
          
          #   [[2]]
          #   [1] 66 44 99
          
          #   [[3]]
          #   [1] "list"


# ASSIGNING NAMES 

names(x) <- c("logic","numeric","character")
x

          #   $logic
          #   [1]  TRUE FALSE  TRUE  TRUE
          
          #   $numeric
          #   [1] 66 44 99
          
          #   $character
          #   [1] "list"


# To remove names assign NULL to names

names(x) <- NULL
names(x)          # NULL
x 
            #   [[1]]
            #   [1]  TRUE FALSE  TRUE  TRUE
                
            #   [[2]]
            #   [1] 66 44 99
                  
            #   [[3]]
            #   [1] "list"



# EXTRACTING ELEMENT FROM LIST

x[1]          #   [[1]]
              #   [1]  TRUE FALSE TRUE TRUE


x[[1]]        #   [1]  TRUE FALSE TRUE TRUE
        

x[[1]][3]     #   [1]  TRUE


# If the list have names :
 
x$logic       #   [1]  TRUE FALSE TRUE TRUE


x["numeric"]  #   [1]  66 44 99

x$numeric[2]  #   [1]  44

x[['logic']][3]  # [1]  TRUE



# SUBSETTING A LIST

x[c('logic',"numeric")]

                #  $logic
                #  [1]  TRUE FALSE  TRUE  TRUE
                
                #  $numeric
                #  [1] 66 44 99



# SETTING VALUES

x$new <- (5:9)
x$new          #  [1]  5 6 7 8 9

x[c("y","z")] <- list(c(TRUE, FALSE),"multiple")

x[c("y","z")]   #  $y
                #  [1]  TRUE FALSE

                #  $z
                #  [1] "multiple"


# we can remove member in a list, by assigning NULL to it.

x$z <- NULL
x       #   $logic
        #  [1]  TRUE FALSE  TRUE  TRUE
        
        #  $numeric
        #  [1] 66 44 99
        
        #  $character
        #  [1] "character"
        
        #  $new
        #  [1] 5 6 7 8 9
        
        #  $y
        #  [1]  TRUE FALSE


# Other functions 

is.list(x)  #  TRUE
is.list(Y)  #  False

as.list(Y)
Y


# unlist

unlist(x)


###############################################################################


## FACTOR

# Syntax -> factor(data)

x <- factor(c(TRUE,FALSE,FALSE,TRUE,TRUE,TRUE))

x      # [1]  TRUE FALSE FALSE TRUE TRUE
       # Levels: FALSE TRUE

# Levels stores the possible values in the factor.
# Levels are displayed in alphabetical order.

levels(x)    #  "FALSE" "TRUE"

# Level order can be changed
x <- factor(c(TRUE,FALSE,TRUE,TRUE,FALSE,FALSE),levels = c(TRUE,FALSE))

levels(x)    #  "TRUE" "FALSE"

#New values can be added to the existing factor by updating the level.

levels(x) <- c(levels(x),"neutral")
x[3] <- "neutral"
x
            #  TRUE FALSE  neutral  TRUE  FALSE   FALSE  
            #  Levels: TRUE FALSE neutral

x[c(7,8)] <- "neutral"
x
            #  TRUE FALSE  neutral  TRUE  FALSE FALSE neutral  neutral 
            #  Levels: TRUE FALSE neutral



# Accessing factor elements

x[2]           #  FALSE

x[c(3,5,1)]    #  neutral  FALSE  TRUE

# Changing item value in factor

x[6] <- "TRUE"
x             #  TRUE FALSE  neutral  TRUE  FALSE TRUE neutral  neutral


x[c(8,3)] <- "TRUE"
x             #  TRUE FALSE  TRUE  TRUE  FALSE TRUE neutral  TRUE



###############################################################################



