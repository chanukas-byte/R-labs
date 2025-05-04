getwd()


setwd("//Users//chanuka//Desktop//Rlab")

getwd()

data10 <- read.table("Data - Lab 8.txt" ,header=TRUE )
data10
fix(data10)

data10 <-data10[[1]]

data10

#population and mean 


mean(data10)
sd(data10)
var(data10)


#q2


 t<-sample(data10,5)
 t
 
 
 samples<-c()
 n<-c()
 
 for (i in 1:30)
 {
   t<-sample(data10,5)
   samples<-cbind(data10,5)
   n<-c(n,paste('S',i))
 }
 
 
 colnames(sample)<-n
 samples 
 
 
 #calculate mean
 
s.mean <-colMeans(samples)
s.mean


   s.vars <-apply(samples,2,var)
   s.vars
   
   #Q3
   mean(s.mean)
   var(s.vars)
   
   
    
   #q4 
   
   mean(data10)
   mean(s.mean)
   
   
   
  #q5
   
   
   
   var(data10)
   var(s.vars)
 
   #2 value are not equal because sample size is not equal