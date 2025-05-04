getwd()
# control statements 
#if

x<-4
x
if(x>=0)
{
  print("positive number ")
  
}


# if else 
y<-9
y<--2

x
y

if(x>=0)
{
  print("positive number")

}else{
  

  print("negative number")
}




# nested if
x<--2
if(x>=0)
{print("positve number")
}else
{
  if(x<=0)
  {
    print("negative number")
  }
  else{
    Print("zero")
  }
  
}

#while loop

i<-1

while (i<=5) {
  print(i)
 i=i+1
  
}


x<-2
while(x<=10)
{
  print(x)
  x=x+1
}




for(k in 3:9)
{
  print(k)
}

#for loop

7:9

for(i in 1:10)
{
  print(i)
}


for (x in 2:8)
{
  print(x)
}


for(y in 10:7)
{
  print(y)
}
     



# function calling


add<-function(a,b)
{
  sum=a+b
  return (sum)
}

add(12,20)

#lab 2

 root<-function(a,b,c)
 {
  dec<- b^2-(4*a*c)
  x1<-(-b+sqrt(dec))/(2*a)
  x2<-(-b-sqrt(dec))/(2*a)
  print(c(x1,x2))
  
 }
 root(2,4,-1)
 
  
  

#import export

data1<-read.csv("DATA 2.csv")
data1
   fix("data1")

   
   data2<-read.table("Data1.txt")
   data2
   fix(data2)
   
    data3<-read.csv("")
    data3
    fix(data3)


   #lab 2 activites 
    x<-c(1,2,3)
    l<-log(x)
    e<-exp(x)
    l
    e 
    
    

    
    plot(l,e ,type="o", xlab ="count",ylab="points",col="purple")
    
  
    
    
    
    
   r<- c(1:10)
    r
  sum(r%%3==0)
    

  a<-c(1:3)
  
  b<-c(3:10)
  
  a
  b
   
  
  out<-intersect(a,b)
 length(out)
 if(length(out)>0)
 {
   print("not disjointed")
   
 }else
 {
   print("disjoint")
 }
  
    
     
    
    
    
    b<-c(5,7,1,3,100)
    b
  max<-0
  
  for (i in length(b))
  {
    if(b[i]>max)
    {
      max=b[i]
    }
  }
  max
  
 
  
  
         
    
    
    
