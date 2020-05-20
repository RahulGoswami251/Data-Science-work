
# Common Functions used in R
# Sort - sort numerical values or character strings
# numerical vector sort

v1 <- c(2,15,9,7,-2,6,4)
sort(v1) # increasing is default
sort(v1, decreasing = TRUE) # sorts in descending order

# Character vector sort

v2 <- c("Cherry","BlueBerry","Apple","Pineapple","Orange")
sort(v2) # sorts in Alphabetical order which is default
sort(v2,decreasing = TRUE) # sorts in Reverse Alphabetical order

# Rank()

x <- c(2,7,1,-17,NA,Inf,35,21,7)
# NAs as last
rank(x)
# NAs as First
rank(x,na.last = FALSE)
# NAs as Last
rank(x,na.last = TRUE)
# NAs are removed
rank(x,na.last = NA)
# NAs are ranked as NA
rank(x,na.last = "keep")
# Ties = "average"
rank(x,na.last = TRUE,ties.method = "average")
# Ties = "first"
rank(x,na.last = TRUE, ties.method = "first")
#rank = "last"
rank(x,na.last= TRUE, ties.method = "last")
# Ties = "random"
rank(x, na.last = TRUE, ties.method = "random")
# Ties = "min"
rank(x, na.last = TRUE, ties.method = "min")
# Ties = "max"
rank(x,na.last = TRUE, ties.method = "max")



#range()
# for a numeric vector
x <- c(2,7,1,-17,Inf,35,21,7)
range(x)
# with NA
x <- c(2,7,1,-17,Inf,35,21,7,NA)
range(x,na.rm=TRUE)
# for a character vector
x<-c("a","h","x","i","j")
range(x)

# round()
# Signif() function is similar to round function, but digits argument in signif() function denotes the total digits, not the digits after decimal
round(c(1.234,2.342,4.562,5.671,12.345,14.567),digits = 2)

signif(125.2395, digits=4)

# floor() & ceiling()
floor(c(1.234,2.342,4.562,5.671,12.345,14.567))

ceiling(c(1.234,2.342,4.562,5.671,12.345,14.567))


### string manipulations

# sub() and gsub() functions
# sub(old, new, string)
string <- "Welcome to R Programming Session. R is a Programming Language"
sub("R", "Python", string)
# gsub(old, new, string)
string <- "Welcome to R Programming Session. R is a Programming Language"
gsub("R", "Python", string)

# strsplit function
# syntax : strsplit(string, delimiter)
string <- "Welcome to R Programming Session"
strsplit(string, " ")
string <- "Welcome/to/R/Programming/Session"
strsplit(string, "/")

# Substring Function 
# Syntax:  substr(text, start, stop)

# Extracting values with substring function in R
substring("Welcome to R Programming Session",12,32)
# Strings
# Paste - combine character strings in R

# simple paste function 
?paste
y<-paste('one',2,'three',4,'five') # default sep is space ' '
x<-c('one',2,'three',4,'five')
x[1]
y[1]
# paste function with sep argument
paste('X', c(1,4,5),sep = ':') # sep = to separate the terms

# paste function with collapse Argument
paste(c('one','two','three','four'), collapse = ' and ') # collapse =  to separate the results

# paste function in R with separator and collapse Argument
paste(c('X','Y'), 1:5, sep = '_', collapse = ' and ')


## ******** merge ******** ##

# Join (Merge) data frames (inner, outer, left, right) 
df1 = data.frame(CustomerId = c(1:6), Product = c(rep("Oven", 3), rep("Television", 3)))
df1
df2 = data.frame(CustomerId = c(2, 4, 6,7), State = c(rep("California", 3), rep("Texas", 1)))
df2
# Merging happens based on the common column name in both the data sets
# Inner Join
df<-merge(x=df1,y=df2,by="CustomerId")
df
# Outer Join
df<-merge(x=df1,y=df2,by="CustomerId",all=TRUE)
df

# Left outer join
df<-merge(x=df1,y=df2,by="CustomerId",all.x=TRUE)
df
# Right outer join 
df<-merge(x=df1,y=df2,by="CustomerId",all.y=TRUE)
df


























