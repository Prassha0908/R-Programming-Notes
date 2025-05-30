## for loop

# Syntax :
#   for(var in vector)
#   {
#      statement (or) set of statements
#   }


for(i in 1 : 3){
  cat("The value of i is",i,"\n")
}

#  The value of i is 1 
#  The value of i is 2 
#  The value of i is 3


for (word in c("hello","world","R program")){
  cat("The current word is",word,"\n")
}

#  The current word is hello 
#  The current word is world 
#  The current word is R program


s <- 10
for(i in 1:5){
  s <- s*i
  cat("Iteration",i,"S value is :",s,"\n")
}

#  Iteration 1 S value is : 10 
#  Iteration 2 S value is : 20 
#  Iteration 3 S value is : 60 
#  Iteration 4 S value is : 240 
#  Iteration 5 S value is : 1200 


s <- 10
for(i in 1:5){
  cat(i*s," ")
}


#   10  20  30  40  50


l <-list(a = c(1, 2, 3), b = c("a","b","c","d"))
for(item in l){
  cat("item : \n length:", length(item), "\n class: ", class(item), "\n")
}

#    item : 
#      length: 3 
#      class:  numeric 
#    item : 
#      length: 4 
#      class:  character 


df <- data.frame(id=1:4,
                 names = c("alex","bob","charlie","dev"),
                 age = c(21,20,23,22))
for(i in 1:nrow(df)){
  cat("\nId:",df$id[i],"\nName:",df$names[i],"\nAge:",df$age[i])
}


#   Id: 1 
#   Name: alex 
#   Age: 21
#   Id: 2 
#   Name: bob 
#   Age: 20
#   Id: 3 
#   Name: charlie 
#   Age: 23
#   Id: 4 
#   Name: dev 
#   Age: 22


# str() prints the structure of data frame
for(i in 1 : nrow(df)){
  row <- df[i, ]
  cat("row",i, "\n")
  str(row)
  cat("\n")
}

# row 1 
# 'data.frame':	1 obs. of  3 variables:
#   $ id   : int 1
# $ names: chr "alex"
# $ age  : num 21
# 
# row 2 
# 'data.frame':	1 obs. of  3 variables:
#   $ id   : int 2
# $ names: chr "bob"
# $ age  : num 20
# 
# row 3 
# 'data.frame':	1 obs. of  3 variables:
#   $ id   : int 3
# $ names: chr "charlie"
# $ age  : num 23
# 
# row 4 
# 'data.frame':	1 obs. of  3 variables:
#   $ id   : int 4
# $ names: chr "dev"
# $ age  : num 22


for(i in 0:5){
  if(i %% 2 == 0){
    cat(i," ")
  }
}

# 0 2 4

# Sum of first N natural numbers
n <- 10
sum <- 0
for(i in 1:n){
  sum <- sum + i
}
cat("Sum of first N natural numbers:",sum)

# Sum of first N natural numbers: 55


# multiplication table
num <- as.integer(readline("Enter a number:"))
for(i in 1:5) {
  cat(num,"*",i,"=",num*i,"\n")
}

      #   5 * 1 = 5 
      #   5 * 2 = 10 
      #   5 * 3 = 15 
      #   5 * 4 = 20 
      #   5 * 5 = 25 


# Count odd & even num in a vector
ec <- 0
oc <- 0
for(i in 0:15){
  if(i %% 2 == 0){
    ec = ec + 1
  } else{
    oc = oc + 1
  }
}
cat("The sum of even vectors:",ec,"\nThe sum of odd vectores:",oc)

      #   The sum of even vectors: 8 
      #   The sum of odd vectors: 8


# Find largest number in a vector
nums <- c(1,3,12,14,15,2,16,4)
max <- nums[1]
for(num in nums ){
  if(num > max){
    max <-  num
  }
}
cat("The largest number is :",max)

    #  The largest number is : 16


# Sometimes, it is useful to intervene in a for loop. In each iteration, we can choose to interrupt the for loop, to skip the current iteration, or do nothing and finish the loop. We can use break to terminate a for loop.
# break -> keyword

for(i in -2:5){
  if(i == 3){
    break
  }
  cat(i," ")
}

# -2 -1 0 1 2


# In some other cases, skipping an iteration in a for loop is also useful.
# next -> keyword


for(i in -2:5){
  if(i == 0){
    next
    
  }
  cat(i," ")
}

# -2 -1 1 2 3 4 5


# Nested for loop
x <- c("A","B")
nested <- character()
for(c1 in x){
  for(c2 in x){
    nested <- c(nested,paste(c1, c2, sep = ",", collapse = ""))
  }
}
nested

# "A,A" "A,B" "B,A" "B,B"




##  while loop

# Syntax :
#     while (test_expression){
#         statement
#     }


x <- 3
while(x < 6){
  cat(x," ")
  x <- x+1 
}                 #  3 4 5 

x <- 3
while(x < 10){
  x <- x + 2
  cat(x," ")
}                 #  5  7  9  11

# Like for loop break & next keyword are used in while loop also

x <- 0
while(TRUE){
  x <- x+1
  if(x == 5){
    break
  } else if(x == 2){
    next
  } else {
    cat(x," ")
  }
}               #  1 3 4 


n <- 1
sum <- 0
while(n <= 10){
  sum <- n + sum
  n <- n+1
}
cat("Sum :",sum)        #  Sum : 55


x = 1
while(x <= 5){
  if(x %% 2 == 0){
    cat(x,"is even number \n")
  } else {
    cat(x,"is odd number \n")
  }
  x <- x + 1
}
    #   1 is odd number 
    #   2 is even number 
    #   3 is odd number 
    #   4 is even number 
    #   5 is odd number 






# repeat loop

# Syntax :
# repeat{
#   commands 
#   if(condition){
#     break
#   }
# }



x <- 1
i = 1
repeat{
  cat(x," ")
  i <- i+1
  x <- x+1
  if(i > 5){
    break
  }
}         #  1  2  3  4  5






