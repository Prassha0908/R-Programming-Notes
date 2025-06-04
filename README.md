# R Programming Notes

This repository contains everything I learn while studying **R programming** from scratch.  
It includes basics, data structures, control flow, data manipulation, visualization, and mini projects as I progress.

Feel free to explore the folders to follow along with my learning path!


# Overview of R programming :

- R is a powerful programming language and environment for statistical
computing, data exploration, analysis, and visualization.
- It is free and open source.
- R is case-sensitive

# Installing R and R studio :  

  [R and R studio](https://rstudio-education.github.io/hopr/starting.html) - Refer this link for installing R and R studio.

  - RStudio is an application like Microsoft Word—except that instead of helping you write in English, RStudio helps you write in R.
  - I use RStudio because it makes using R much easier. Also, the RStudio interface looks the same for Windows, Mac OS, and Linux.

----
# Environment of R studio :


---

# Print() vs Cat()  :

- print()
  - Used to print structured R objects (like numbers, vectors, data frames, etc.).
  - Automatically adds a newline after printing.
  - Useful in debugging, as it can display internal structure.
  - The [1] indicates it's the first element of a vector.
 
- cat()
  - Stands for "concatenate and print".
  - Used to display plain, unformatted text, typically for user-facing messages.
  - Does not add a newline automatically — you must include \n if needed.
  - Can’t print structured objects like lists or data frames directly.

- When to use what?
  - Use print() when debugging or viewing the structure of variables.
  - Use cat() when you want nice output like status messages, summaries, or logs.
 
  
# Data Types in R are :

1. numeric – (3,6.7,121)
2. Integer – (2L, 42L; where ‘L’ declares this as an integer)
3. logical – (‘True’)
4. complex – (7 + 5i; where ‘i’ is imaginary number)
5. character – (“a”, “B”, “c is third”, “69”)
6. raw – ( as.raw(55); raw creates a raw vector of the specified length)

# class() vs typeof() :

- class()
   - It gives the abstract or object-oriented classification of an object.
   - Example: "data.frame", "numeric", "factor", "Date"
   - It tells you what kind of object you're working with in terms of R's object system.

- typeof()
   - It tells you the underlying storage mode of the object used internally by R.
   - Example: "list", "double", "character", "integer"
   - It reflects how the object is implemented at a lower level.

# numeric vs integer data type :

- Whole numbers and decimal numbers comes under numeric data type.
  - Example : x <- 10 , here x is numeric.
    
- Whole numbers along with "L" at suffex comes under integer data type.
  - Example : x <- 10L , here x is integer.
 
# Basic objects :

1.   Vector
2.   Matrix
3.   Array
4.   List
5.   Factors
6.   Data Frame

# 1. Vector :

- A vector is a group of primitive values of the same type.
- It can be a group of numbers, true/false values, texts, and values of some other type.
- Types of vector
  1. Numeric Vector -> A numeric vector is a vector of numeric values.
  2. Logical Vector -> A logical vector stores a group of TRUE or FALSE values.
  3. Character Vector -> A character vector is a group of strings. Strings in R consist of alphabets, numbers, and symbols.
  4. Complex Vector -> Complex vectors are vectors used to store numbers with an imaginary component.
  5. Raw Vector -> Raw vectors basically store raw binary data that is represented in the hexadecimal form.
 
# 2. Matrix :

- A matrix is a vector represented and accessible in two dimensions.
- A matrix X have m*n, that is, matrix X will have m rows and n columns.
- X will have m*n entries, with each entry aij having a unique position given by its specific row (i = 1, 2, ..., m) and column (j = 1, 2, ..., n).
- Matrix are filled columnwise by default, to store elements rowwise _byrow_ should be _TRUE_ .
  
# 3. Array :

- Arrays are the data objects which allow us to store data in more than two dimensions.
- An array is created with the help of the **array()** function.
- Can be 2 or more dimensions (e.g., 3D, 4D, etc.).

# 4. List :

- A list is a generic vector that is allowed to include different types of objects, even other lists.
- A single list could contain a numeric matrix, a logical array, a single character string, and a factor object.
- List is created using **list()** function.
  
# 5. Factor :

 - Factors are implemented to categorize the data or represent categorical data and store it on multiple levels.
 - A factor can be created or modified with **factor()** with vector as input.
 - It can store both integers and strings values, and are useful in the column that has a limited number of unique values.

# 6. Data Frame :

- Data Frames in R are generic data objects that are used to store tabular data. It is a 2D array like structure.
- Data Frame can be interpreted as matrices where each column of a matrix can be different data type.
- 3 main principle components -> data, row, column.
- It is special type of list in which each component has eqaul length.

  - Characteristic of Data Frame :
    - The column name should be non-empty.
    - Row name should be unique.
    - The data which is stored in a data frame can be a factor, numeric, or character type.
    - Each column contains same number of data items.

- Data Frame is created by **data.frame()** .


# Conditional Statement :

- if statement
    - If statement is one of the decision-making statements.
    - It is used to decide whether a certain statement or block of statements will be executed or not i.e if a certain condition is true then a block of statement is executed otherwise not.
  
- if-else statement
    - An if-else statement is the if statement followed by an else statement.
    - In an if-else statement, else statement will be executed when the boolean expression is FALSE.

- switch function
   - A switch statement is a selection control mechanism that allows the value of an expression to change the control flow of program execution via map and search.
   - Syntax : switch(test expression, case1, case2, case3, .........., caseN)


# Loop Statements :

- for loop
    - The most commonly used loop structure when you want to repeat a task a defined number of times is the for loop.
    - The for loop evaluates an expression by iterating over a given vector or list.
      
- while loop
   - When we don't how many times the desired operation should run then we can use while loop.
   - A while loop runs and repeats while a specific condition returns TRUE.
      
- repeat loop
   - A repeat loop is used to iterate over a block of code multiple times unit break statement is found.
   - Unlike other loops it doesn't use condition to exit the loop, istead it looks for the BREAK statemene.
   - Infinite loop can be created by repeat loop.  
  
# Functions :

- R has many built-in functions which can be directly called without defining them first.
- Similar to other languages R also has two type of functions.
    1. Built-in Functions
    2. User defined Functions

# Number Round Functions :

1. ceiling(x) :  Rounds a number upward to the nearest integer, always rounds towards positive infinity even for a negative number.

2. floor(x) :  Rounds a number downward to the nearest integer, towards negative infinity.

3. trunc(x) :  Truncates the decimal part (drops everything after the decimal). Unlike ceiling() and floor(), it simply cuts off decimal part without rounding.

4.  round(x, digit) :  Rounds to the nearest value, optionally to a specific number of decimal places. Rounds to nearest, with “round to even” rule on .5 .

5.  signif(x, digit) :  Rounds to a specified number of significant digits, not decimal places.


# Extreme Function :
- max() : Used to calculate the maximum value in a single vector (or) multiple vector.
- min() : Used to calculate the minimum value in a single vector (or) multiple vector.
- pmax() : Used to calculate the maximum value at each position among all vectors.
- pmin() : Used to calculate the minimum value at each position among all vectors.
  





