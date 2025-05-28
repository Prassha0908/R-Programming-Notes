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




  