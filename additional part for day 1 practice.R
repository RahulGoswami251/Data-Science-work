

# Matrix 

###### Creating Matrix ########


m <- matrix(c(3:14), nrow=4, byrow=TRUE)
print(m)


n <- matrix(c(3:14), nrow=4, byrow=FALSE)
print(n)

rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")


###### Accesing matrix elements #######

P <- matrix(c(3:14), nrow= 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)      

print(P[1,3])
print(P[3,2])



###### Addition of two matrix ######## 

matrix1 <- matrix(c(3,9,-1,2,4), nrow=2) 
print(matrix1)

matrix2 <- matrix(c(6,-1,2,3,9), nrow=2) 
print(matrix2)

result <- matrix1 + matrix2 
result  


######## Creat Array #########

vector1 <- c(5,9,3)  
vector2 <- c(10,11,12,13,14,15)
result <- array(c(vector1, vector2), dim = c(3,3,2))
print(result)  
  

###### Assigning Array Row & Column Names #######

vector1 <- c(5,9,3)  
vector2 <- c(10,11,12,13,14,15)

column.names <- c("col1", "col2", "col3")
row.names    <- c("row1","row2", "row3")
matrix.names <- c("matrix4", "matrix5")

result <- array(c(vector1, vector2), dim = c(3,3,2), dimnames = list(row.names, column.names, matrix.names))
print(result)


#### Manipulating Array Elements ###### 

vector1 <- c(5,9,3)  
vector2 <- c(10,11,12,13,14,15)

array1 <- array(c(vector1, vector2), dim = c(3,3,2))
array1

vector3 <- c(9,1,0)  
vector4 <- c(6,0,11,3,14,1,2,6,9)

array2 <- array(c(vector3, vector4), dim = c(3,3,2))
array2

matrix1 <- array1[,,2]
matrix1

matrix2 <- array2[,,2]
matrix2

result <- matrix1 + matrix2
print (result)


###### Calculation Across Array Elements ########

vector1 <- c(5,9,3)  
vector2 <- c(10,11,12,13,14,15)

new.array <- array(c(vector1, vector2), dim = c(3,3,2))
print(new.array)

result <- apply(new.array, c(1), sum)
print(result)

####### VECTOR ########

x <- c(1: 10)
x

y <- c(2,9,11)
y

t <- c(1,2,3)
t

c <- c(1,2,3, "hello", "ab")  
c

###### Vector manululation #######

y <- c(2,9,11)
y

t <- c(1,2,3)
t
add.result <- t+y
print(add.result)

multi.result <- t*y
print(multi.result)

sub.result <- t-y
print(sub.result)

div.result <- t/y
print(div.result)

d <- seq(1,4)
d

a <- seq(1,6,2)
a

###### Vector Element Recycling ####### 

v1 <- c(2,3,4,5)
v2 <- c(2,1,23,11,12,32,34,2,8,9)

v1 <- c(2,3,4,5,2,3,4,5,2,3)
add.result <- v1 + v2
print(add.result)


####### Vector Elelement Sorting #######

v <- c(3,4,8,2,1,9,304,-4)
sort.result <- sort(v)
print(sort.result)

####### List #######
#Creating List 

list_data <- list("red", "Green", c(2,4,1), TRUE, 51.23, 199.1)
list_data

####### Naming List Elelemnts ########

T <- list(c("jan", "Feb", "Mar"), matrix(c(2,3,4,5,6,4), nrow=2),
          list("green",12.3))
T

names(T) <- c("1st Quarter", "A_Matrix", "A Inner list")
T

###### Accessing List Elements #######

T$'1st Quarter' 
T$A_Matrix
T$`A Inner list`

###### Manipulating List Elements #######

T[4] <- "New Element"
T[4]

T[4] <- NULL
T[4]

T[3] <- "update element"
T[3]

######## Merging Two List ########

merged.list <- c(T[1],T[3])
merged.list

y <- list(c(1,2,3,4))
z <- list(c('g','h', 'f','u'))
merged.list <- c(y,z)
merged.list

####### Converting list to vector ########

rt <- list(c(2,6,9,1))
fg <- list(c(12.3,23.1,15.45,3))

v1 <- unlist(rt)
v1
v2 <- unlist(fg)
v2

result <- v1+v2
result

####### Create Data Frame #########

emp.data <- data.frame(emp_Id = c(1001,1002,1003,1004), empl_name=c("Rakesh","Mahesh", "Suresh","Jignesh"),
                                salary=c(10000,15000,8000,20000),empl_code=c(201,202,203,204),
                                Join_date= as.Date(c("2012-03-01", "2013-04-10","2013-04-02","2014-05-05")),
                                stringsAsFactors = FALSE)
emp.data  

######## Structure Data Frame #######
str(emp.data)

######## Summary Data Frame #######
summary(emp.data)

######## Extract Data Frame #######  
Extractdata <- data.frame(emp.data$emp_Id, emp.data$empl_name,emp.data$empl_code)
Extractdata  

Extractdata <- emp.data[1:3,]  
Extractdata  

####### Expand Data Frame #######
emp.data$dept <- c("IT Operations", "Production", "Administration", "Store" )
emp.data

emp.newdata <- data.frame(emp_Id = c(1005,1006,1007,1008), 
               empl_name= c("Ronny","Cristina", "Ronaldo", "Messi"),
               salary= c(11000,100000,120000, 130000),
               empl_code= c(205,206,207,208),
               Join_date= as.Date(c("2018-09-02","2018-09-04","2019-10-10","2019-11-01")),
               dept= c("Sales", "Data Science", "Business Analysis", "Data Operations"),
               stringsAsFactors = FALSE)
emp.newdata  
emp.finaldata <- rbind(emp.data,emp.newdata)
emp.finaldata


library(MASS)
merged.pima <- merge(x=Pima.te, y=Pima.tr,
    by.x= c("bp", "bmi"),
    by.y= c("bp", "bmi"))

merged.pima


######## Joining columns & rows in Data Frame #########
city <- c("Carica", "Mumbai","Gurave","Degijia")
state <- c("fg","jk","kl","ui")
addressses <- cbind(city,state)
addressses

newgeneration <- data.frame(city,state)
newgeneration


all_addressses <- rbind(newgeneration,addressses) 
all_addressses


######## Factors ##########

kl <- c(2,3,4,5,3,4)
kl
factor.data <- factor(kl)
factor.data
is.factor(factor.data)

###### Factors in data frame ######
height <- c(120, 171, 171, 180)
weight <- c(45, 50, 50, 61)
input_data <- data.frame(height, weight)
input_data
Output_data <- factor(input_data)
Output_data
is.factor(height)
is.factor(weight)
is.factor(input_data)
is.factor(Output_data)  


####### Changing the order of levels ########
new_order_data <- factor(Output_data, levels = c(180,120,170), c(61,50,45))
new_order_data  


####### Generate Factor Levels ########
v <- gl(3,4, labels= c("Tampa", "Seattle", "Boston"))
v




