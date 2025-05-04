getwd()

#labsheet 4 first questions


data5<-read.table("DATA 4.txt" ,header=TRUE)
data5
fix(data5)

names(data5) <- c("team","teamAttendence","salary","years")
names(data5)
fix(data5)


attach(data5)

team

teamAttendence

salary


years

#boxplot 
#second questions  in labsheet 04



boxplot(data5$teamAttendence ,main="boxplot for team attendence",outline=TRUE,xlab="attendence",horizontal = TRUE)

#  for the salary





boxplot(data5$salary ,main="boxplot for salary",outline=TRUE,xlab="salary",,horizontal = TRUE)

#for the years



boxplot(data5$years ,main= "boxplot for years",outline=TRUE,xlab="years",horizontal = TRUE)



#histograms creating 



hist(teamAttendence,main ="histrogram for the attendence", ylab="frequency")
abline(h=0)

# histograms for the years 


hist(salary,main="histograms for the salary ",ylab="salaries")
abline(h=0)
   
#for the Years 

hist(years,main="histograms for the years",ylab="years")
abline(h=0)



# stem and plot leaf

stem(teamAttendence)


# for years 


stem(years)


# for the salary


stem(salary)


#viewing the data 
View (data5)


#searching mean


mean(years)

mean(teamAttendence)

mean(salary)

# mode

mode(years)


mode(teamAttendence)

#median


median(years)
median(teamAttendence)

median(salary)



# standard deviatation(SD)


sd(teamAttendence)

sd(salary)


sd(years)

#summary 



summary(teamAttendence)



summary(salary)




summary(years)



# finding quartiles 

quantile(teamAttendence)



quantile(salary)



quantile(years)



#finding q1 

quantile(teamAttendence)[2]


quantile(salary)[2]



quantile(years)[2]


#finding q2 




quantile(teamAttendence)[3]


quantile(salary)[3]



quantile(years)[3]



#finding Q3 for that



quantile(teamAttendence)[4]


quantile(salary)[4]



quantile(years)[4]

#finding IQR (q3-q1)
IQR(teamAttendence)


IQR(salary)


IQR(years)



#Q3 in fourth lab sheet 


get.mode<-function(s)
{
  counts<-table(s)
  names(counts)[counts==max(counts)]
}

get.mode(years)

get.mode(salary)


get.mode(teamAttendence)

#questions 4 




View(get.mode)




get.outliers<-function(z){
  


  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  
  iqr<-q3-q1
  ub=q3+1.5*iqr
  lb=q1-1.5*iqr
  
  print(paste("upperbound",ub))
  print(paste("lowerbound",lb))
  
  
  outliers<-z(z<lb | z > lb)
  print(paste("outliers",paste(sort(outliers),collapse=",")))

  
  
}




#Then calling the Functions 


get.outliers(years)
get.outliers(teamAttendence)
get.outliers(salary)




