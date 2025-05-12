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
 
  
# Data Types in R are:

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

# numeric vs integer data type:

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

# Vector :

- A vector is a group of primitive values of the same type.
- It can be a group of numbers, true/false values, texts, and values of some other type.
- Types of vector
  1. Numeric Vector -> A numeric vector is a vector of numeric values.
  2. Logical Vector -> A logical vector stores a group of TRUE or FALSE values.
  3. Character Vector
  4. Complex Vector
  5. Raw Vector



