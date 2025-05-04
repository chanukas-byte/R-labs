print(100:150)
print(0:10)

#this is my first rlab 
# get the current working directory 
getwd()

# setting current wkring directory 

setwd("//Users//chanuka//Desktop//Rlab")

getwd()

#help
?solve

help ("data.frame")

# install packages 
install.packages("ggpolt2")

#scaler operations 
2+8
900-78
81/9
50*6


5^2


#logical errors 
x=8
y=5

isTRUE(x==y)
isTRUE(x>y)
isTRUE(x!=y)


#assignnemt operators 
#local env
a=5
a<-5


#global env

a<<-5
# vector 

s<-c(3,8,7,4) # vector 
s
class(s)

r<-c(5.4,7.5,2.0)
r
class(r)

f<-c("h,L","P")
f
class(f)

# factor 
 gender<-c(0,1,0,1)
 gender
 
 Gender<-factor(gender,c(0,1) ,c("male,female"))
 Gender
 
 class(Gender)  
 
 
 
 # list
 
 p<-c(1,2,3)
 q<-"green"
 r<-21
   
 p
 q
 r
 
 
 
 data<-list(p,q,r)
 data
 class(data)
 
 
 #matrix
 
 
 matrix1<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow =TRUE)
 matrix1
 
 
 
 
 matrix2<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow =FALSE)
 matrix2
 
 
 
 
 
 matrix3<-matrix(c(1,2,3,4,5,6),nrow=3,ncol=2,byrow =TRUE)
 matrix3
 class(matrix3)
 
 
 
 #dataframe
 
 
 
 height<-c(67,78,89,90)
 weight<-c(56,34,76,54)
 
 data_set<-data.frame(height,weight)
 data_set
 
 
 
 
 
 
 
 