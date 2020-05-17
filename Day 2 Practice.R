# Finding Variables in Environment

ls()
ls(pattern = "var") # displays variable with var text in it
ls(all.name = TRUE) # also displays hidden(starting with .) variables


# Deleting variables 
var1 <- 1
ls(pattern = "var")
rm(list = ls(pattern = "var")) # will remove all variables with var text in it


#Operators In R
'''
Operators : 
  1.Arthmetic               - +,-,*,/,^,%%,%/%
  2.Relational              - >,<,>=,<=,==,!=
  3.Logical                 - !,&,&&,|,||
  4.Assignmet               - 
  a. Leftwards assignment   - <-, <<-, =
  b. Rightwards assignment  - ->, ->>
  
  
1. Airthmetic

n <- c(1, 2.4, 5)
o <- c(3, 4.7, 9.1)
p <- c(1.9, 2, 7)

#Addition:   
n+o  
n+o+p 
  
#Substraction:
n-o
n-o-p  
  
#Multiplication (*)
u <- 6
e <- 9
u*e

# Division (/) # Quotient
u <- 10
e <- 5
u/e  
  
# Integer division
x<-10
y<-3
x %/% y

# Modulus (%%) # Remainder
x<-10
y<-3
x%%y  


# Relational Operators - returns boolean values
q <- c(1, 3, 4, 3, 2)
r <- c(2, 4, 4, 5, 2)
# 1. > greater than 
q[1] > r[2]

# 2. < lesser than
q < r

# 3. == equal to
q == r

# 4. >= greater than or equal to
q >= r

# 5. <= lesser than or equal to 
q <= r

# 6. != not equal to 
q != r
  
  
# Logical operator
# Condition: All numbers greater than or equals to  1 are considered as logical value TRUE
x <- c(TRUE,FALSE,0,6)
y <- c(FALSE,TRUE,FALSE,TRUE)

!x

x&y

x&&y

x|y

x||y

# Assignment Operators
# 1. Left Assignment <- or == or <<-
v1 <-  c(3,1,TRUE,2+3i)
v2 <<- c(3,1,TRUE,2+3i)
v3 =   c(3,1,FALSE,2+3i)

v1
v2
v3

c(3,1,TRUE,2+3i) -> v4
c(3,1,TRUE,2+3i) ->> v5
v4
v5

# 2. %in% - an element belongs to a vector
v7 <- c(8, 9, 10)
v8 <- c(12, 13, 14)
t <- 1:10
t
v7 %in% t
v8 %in% t
t %in% v7

# 3. %*% - multiply a matrix with its transpose
v9 <- matrix( c(2, 6, 5, 1, 10, 4), nrow = 2, ncol = 3, byrow = TRUE)
v9

t(v9)

v9t <- v9 %*% t(v9)
v9t

# End of Operators


# Decision Making/ conditional Statements in R
# If Statement
# Syntax: 
if (test_expression) {
  statement
}

x <- -5

if (x < 0){
    print ("Hello World")
}


# If Else Statement
# syntax: 
if (test_expression) {
  statement1
} else {
  statement2
}


y <- -5

if(y > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}


# Nested If Else Statement
if ( test_expression1) {
  statement1
} else if ( test_expression2) {
  statement2
} else if ( test_expression3) {
  statement3
} else  statement4


x <- 0

if (x != 0) {
  print("Negative number")
} else if (x >= 0) {
  print("Positive number")
} else print("Zero")



# There is an easier way to use if...else statement specifically for vectors in R programming
# Syntax: ifelse(test_expression,x,y)

a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")

# for more than 2 conditions
client <- c("private", "public", "other" , "private")
VAT <- ifelse(client =='private', 1.12, ifelse(client == 'public', 1.06, 1))
VAT

# Loops in R
# While loop
# Syntax
while (test_expression) 
{
  statement
}


i <- 1
while (i < 6) {
  print(i)
  i = i+1
}


i <- 6
while(i < 9){
    print(i)
    i = i+1
}


# Repeat loop
# Syntax 
repeat { 
  commands 
  if(condition) {
    break
  }
}


v <- c("Hello","loop")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt+1
  
  if(cnt > 5) {
    break
  }
}


# For Loop 
# Syntax
for (value in vector) {
  statements
}

v <- LETTERS[1:4]
for ( i in v) {
  print(i)
}

z <- seq(1:9)
for(i in z) {
print(i)
}


# Loop Control Statements
# break Statement - terminates the loop statement and transfers execution to the statement 
# immediately following the loop

v <- c("Hello","loop")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}


# next Statement - useful when we want to skip the current iteration of a loop without terminating it
v <- LETTERS[1:6]
for ( i in v) {
  
  if (i == "D") {
    next
  }
  print(i)
}


d <- LETTERS[1:15]
for (i in d) {
  if (i == "P") {
  next
  }
  print(i)
}


# Function 
function_name <- function(arg_1, arg_2, ...) {
  Function body 
}
# User-defined Function
new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}

# Calling a Function
new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}
new.function(6)

# Calling a Function without an Argument
new.function <- function() {
  for(i in 1:5) {
    print(i^2)
  }
}	
new.function()

# Calling a Function with Default Argument
# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}
# Call the function without giving any argument.
new.function()
# Call the function with giving new values of the argument.
new.function(9,5)

# Lazy Evaluation of Function
# Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}
# Evaluate the function without supplying one of the arguments.
new.function(6)






















