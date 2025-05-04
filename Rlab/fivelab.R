getwd()



setwd("//Users//chanuka//Desktop//Rlab")


getwd()


data8<-read.csv("Data6.txt")
data8
fix(data8)

#renaming 
names(data8)<-c("x1","x2")
data8

fix(data8)


attach(data8)
#histogram 


x1
x2

hist( x2,main="noof shareholders for the company", xlab= "company", ylab="frequency")
abline(h=0)

#question 2

breaks_seq <- seq(130, 270, length.out = 8)  # create breaks sequence
histogram <- hist(x2, 
                  main = "No of shareholders in company", 
                  xlab = "Companies", 
                  ylab = "Frequency", 
                  abline(h=0),
                  breaks = breaks_seq)  # pass breaks here





#q3

breaks<-round(histogram$breaks)


#2step



freq<-histogram$counts



#3step - Idenitfy the mid points of each class
mids<-histogram$mids


#create empty vector
classes<-c()
for(i in 1:length(breaks)-1){
  classes[i]<-paste0("[",breaks[i],",",breaks[i+1],"]")
}
cbind(classes=classes,frequency=freq)



#Question 04 - Portray the distribution in the form of a frequency polygon.
# Draw the histogram first
histogram <- hist(x2,
                  main = "Histogram & Frequency Polygon",
                  breaks = seq(130, 270, length = 8),
                  col = "lightblue")
# Overlay the frequency polygon
lines(histogram$mids, histogram$counts, type = "o", col = "red", lwd = 2)
# Frequency polygon plot
plot(mids, freq, type = "l",
     main = "Frequency Polygon for Number of Shareholders",
     xlab = "Shareholders",
     ylab = "Frequency",
     ylim = c(0, max(freq)),
     col = "blue", lwd = 2)
plot(mids, freq, type = "o",
     main = "Frequency Polygon for Number of Shareholders",
     xlab = "Shareholders",
     ylab = "Frequency",
     ylim = c(0, max(freq)),
     col = "red", lwd = 2)
plot(mids, freq, type = "p",
     main = "Frequency Polygon for Number of Shareholders",
     xlab = "Shareholders",
     ylab = "Frequency",
     ylim = c(0, max(freq)),
     col = "green", lwd = 2)



#questions 5

cum.freq <- cumsum(freq) # Make sure cum.freq is defined
cum_start <- numeric(length(breaks)) # create a numeric vector
for (i in 1:length(breaks)) {
  if (i == 1) {
    cum_start[i] <- 0
  } else {
    cum_start[i] <- cum.freq[i - 1]
  }
}
plot(breaks,cum_start,type = "o",
     main = "Frequency Polygon for Number of Shareholders",
     xlab = "Shareholders",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(freq)),
     col = "green", lwd = 2)
cbind(upper=breaks,cum.freq=cum_start)






