getwd()
setwd("//Users//chanuka//Desktop//Rlab")
getwd()
data3<-read.csv("DATA 3.csv", header=TRUE, sep =",")
data3
fix(data3)
# Assuming data3 is a data frame
names(data3) <- c("AgeofStudent", "Gender", "Accommodation")

# To confirm
names(data3)
fix(data3)

attach(data3)

data3$AgeofStudent
data3$Gender
data3$Accommodation
`
data3$Gender <- factor(data3$Gender, c(1, 2), c("Male", "female"))
data3$Gender


data3$Accommodation <- factor (data3$Accommodation ,c(1,2,3),c("stayathome","boardered","lodging"))
data3$Accommodation
                     
View(data3)    

attach(data3)



#single variable 

#anlysing that fields 
Gender.freq<- table(Gender)
Gender.freq








Accommodation.freq <- table(Accommodation)
Accommodation.freq



#pie charter univarities Anlyze

#main - used for the identfying the chart name as well 

pie(Gender.freq,main="pie chart for the Gender")

pie(Accommodation.freq ,main="pie chart for the Accommodation")

#barplot 


barplot(Gender.freq ,main="barchart for the gender", xlab="Gender",ylab="Count")
abline(h=0)


barplot(Accommodation.freq,main="barchart for the Accomodation",xlab="Types",ylab="Count")
abline(h=0)


#age and accomadation together 

Gen_acc_freq<-table(data3$Accommodation,data3$Gender)


Gen_acc_freq

#beside -generating Cluster barplots 

barplot(Gen_acc_freq,main="comparing the Gender And Accomadation freq" ,col=rainbow(7),beside=TRUE)
abline(h=0)


# boxplots 


boxplot(Gen_acc_freq,main="box plots for the Gender and Accommodation freq")
abline(h=0)


#age with gender and accomadations 




#last questions 

boxplot(data3$AgeofStudent ~ data3$Gender,main="boxplot for the Age and Gender",xlab="gender",ylab="count",horizontal=TRUE)
abline(h=0)



#age with accomadation



 

boxplot(data3$AgeofStudent ~ data3$Accommodation,main="boxplot for the Age and Accomadation",xlab="gender",ylab="count",horizontal=TRUE)
abline(h=0)



#last mean mode median

#searching for the  mean values 


Gen_acc_freq <- xtabs(data3$AgeofStudent ~ data3$Gender + data3$Accommodation)

mean_age_table<-tapply(data3$AgeofStudent,list(data3$Gender,data3$Accommodation),mean)


mean_age_table

