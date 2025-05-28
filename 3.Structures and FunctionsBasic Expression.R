## ASSIGNMENT EXPERSSION 


# " = " : assigns right side value to left side operand
a = 10


#  " <- "  : assigns right side value to left side operand
# assigns value to local
a <- 9


# " -> "  : assigns left side value to right side operand
8 -> a


# " <<- " : assigns right side value to left side operand
# assigns value to parent/global
a <<- 7


# " ->> " : assigns left side value to right side operand
6 ->> a



##  RELATIONAL OPERATOR

# The relational operators carry out comparison operations between the corresponding elements of the operands.

v1 <- c(1,2,3,4) 
v2 <- c(10,1,4,2)

print(v1>v2)  # FALSE TRUE FALSE TRUE

print(v1<v2)  # TRUE FALSE TRUE FALSE

print(v1==v2) # FALSE FALSE FALSE FALSE

print(v1 <= v2)  # TRUE FALSE  TRUE FALSE

print(v1 >= v2)  # FALSE  TRUE FALSE  TRUE

print(v1 != v2)  # TRUE TRUE TRUE TRUE



## LOGICAL OPERATOR

# & , | -> element-wise comparison for vectors.
# && , || -> only compares the first element of each vector (used in control flow).

v1 <- c(2,12,4+3i,TRUE)
v2 <- c(3,5,3-4i,FALSE)

print(v1&v2)  # TRUE TRUE TRUE FALSE

print(v1|v2)  # TRUE TRUE TRUE TRUE

print(v1 && v2) # TRUE

print(v1 || v2) # TRUE

print(!v1)    # FALSE FALSE FALSE FALSE




## ARITHMETIC OPERATOR

v1 + v2    # 5+0i 17+0i  7-1i  1+0i
v1 - v2    # -1+0i  7+0i  1+7i  1+0i
v1 * v2    # 6+0i 60+0i 24-7i  0+0i
v1/v2      # 0.6666667+0i 2.4000000+0i 0.0000000+1i  Inf+NaNi
a <- v1^v2
a          # 8.0000+0.000i   248832.0000+0.000i  -334.0314+1605.399i  1.0000+0.000i 

x1 <- 21
x2 <- 5

# Remainder from division of first operand with second
x1 %% x2    #  1

# Quotient from division of first operand with second 
x1 %/% x2   #  4




## MISCELLANEOUS OPERATOR

#  : -> creates a series of number in serious.
v1 <- 1:5
v1        # 1 2 3 4 5

#  %in% -> Checks if the element belong to the vector.

v1 <- c(21,34,13,-12)
v2 <- 10:30

print(v1 %in% v2)   #  TRUE FALSE  TRUE FALSE

#  %*% -> Used to multiply two matrices.






##  RELATIONAL OPERATOR
