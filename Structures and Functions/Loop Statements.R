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



