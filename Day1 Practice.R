
2+2
x <- 4>2
x
class(x)


var_name2. <- 1
.var_name <- 2
var.name <- 3


Data types :  
  
1. Numeric
2. Integer
3. Charector
4. Logical
5. complex


1. 
x <- 3
x

2.
q <- 2L
q
class(q)

s <- 1:10
s
s <- seq(1,10)
s
s <- seq(1,10,2)
s
class(s)


3.
d <- "Hello"
d

LETTERS

x<-LETTERS[1:6] #sequesnce of letters in caps
x
y<-letters[1:6] # sequesnce of letters in smalls
y

4.
d <- 5 < 10
d
e <- 4==1
e
class(d)
class(e)


5)

f <- 2+ 10i
f
class(f)
Re(f)
Im(f)





Data structure :  
1.Vector -        1dimention,Homogenious
2.Matrix -        2dim,Homogenious
3.Array -         multi dim ,Homogenious
4.List -          Multi dimention , Hetrogenious
5.DataFrame -     2 dimention , hetrogenious
6.Factors -       data structure to store multiple charectors



1.# Vector 
L <- c(10,2,4)
L
is.vector(L)

w <- c(2,5,34,30,10,'k')
w

s[c(2,4)]
s

w[1,9]
w[1:3]


2] # Matrix 
## Defining a matrix
## matrix is nothing but a combination of rows and columns

a<-matrix(c(1,2,3,4),nrow = 1)
a
a<-matrix(c(1,2,3,4,5,6),ncol = 3)
a

# data always stores in a clumn format
#if you want to allot thge values in a rowwise

x<-matrix(c(1:5),nrow=5,ncol =5,byrow = T,dimnames = list(c('c1','c2','c3','c4','c5'),
                                                          c('c1','c2','c3','c4','c5')))

x

y<-matrix(c(1:5),nrow=3,ncol= 3)
y

# Matrix[rows,columns]
x[ ,1]
x[1,]
x[2,1]
x[c(1,5),5]
rownames(x)<-c('row1','row2','row3','row4','row5')
colnames(x)<-c('col1','col2','col3','col4','col5')
x


# Define array 
#multi dimentional (x,y,z,....)
arr<-array(c(1:6),dim = c(2,4,3))
arr

arr <- array(c(1:4), dim = c(3,4,4))
arr


arr[,,1]
arr[1,,]
arr[,c(1,3),c(1,3)]
arr[1,2,3]

arr[1,,c(1,3)]


# Define a List 
List<-list(Id=c(1,2,3,4),name=c('D','k','L','S'),marks=c(9,9.5,8,8.5))
List

List2<-list(List,x,arr)
List2

List2[[2]]
class(List2)

## Data Frame
DF<-data.frame(Id=c(1,2,3,4),name=c('D','k','L','S'),marks=c(9,9.5,8,8.5))
DF

DF2<-data.frame(Id=c(5,6,7,8),name=c('A','T','V','p'),marks=c(7,9.5,8.5,7.5))
DF2


DF[,1]

DF$name
DF$Id[1]

rbind(DF,DF2)

cbind(DF,DF2)


## Factor
'''
Factor - Factors are the data objects which are used to 
categorize the data and store it as levels. They can store 
both strings and integers. They are useful in the columns which have a
limited number of unique values. Like "Male, "Female" and True, False etc.
They are useful in data analysis for statistical modeling. 
,,,

k <- c("red", "green", "blue", "blue", "red", "red")
k
class(k)

factor_k <- factor(k)
class(factor_k)
factor_k

l <- c(1, 2, 3, 4, 4, 5, 3, 2, 5.1)
l
class(l)
factor_l <- factor(l)
class(factor_l)
factor_l


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
  
  
  # Defining Arthmetic Opertor
n <- c(1, 2.4, 5)
o <- c(3, 4.7, 9.1)
p <- c(1.9, 2, 7)

#Addition 
n+o
n+o+p

#Subtraction
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
