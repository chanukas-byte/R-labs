getwd()


#part 1
data11<-read.table("Forest.txt", header=TRUE)
data11
fix(data11)



attach(data11)


#part2

str(data11)


#part 3
#no of columns and rows

nrow(data11)
ncol(data11)



#part 4

summary(wind)

#min

min(wind)

#max
max(wind)


#five number summary in dataset


summary(temp)


#questions 6
boxplot(wind,
      horizontal=TRUE,
        outline = TRUE,
        pch = 16)

#outliers searching

Q1 <- quantile(data$wind, 0.25)
Q3 <- quantile(data$wind, 0.75)
IQR <- Q3 - Q1
outliers <- data$Wind[data$Wind < (Q1 - 1.5 * IQR) | data$Wind > (Q3 + 1.5 * IQR)]
length(outliers)

#negative Skewness



#meadian of temp 


median(temp)

#mean and Sd of wind variable 



mean(wind)
sd(wind)

#IQR 


IQR(wind)

summary(wind)
#11

freq<-table(day,month)
freq

#12

mean(temp[month=="sep"])


#13




count<-table(day[month=="jul"])
names(count[count==max(count)])

