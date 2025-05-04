getwd()


#question 1

#i) 

#binominal distribution


#dbinom
#used for exactly values 
#2 part of  1question 

dbinom(40,44,0.92)


#3rd part of 1 question

 pbinom(35,44,0.92)
 
 #4part of 1 st questions
 
1-pbinom(37,44,0.92)



#last part of 1 st questions 

pbinom(42,44,0.92) -pbinom(39,44,0.92)



#questions 2



#poisson distribution 


#1st part dpois(6,4.5)


#2nd

#more than 6 
ppois(6,4.5,lower.tail = FALSE)


#questions 3

#exponential 


#pexp used for that

#normal distrubution in continuos distribution

#pnorm()


# Part 1 
pexp(3,0.5)

#part 2

pexp(4,0.5,lower.tail = FALSE)



#part 3

pexp(4,0.5) - pexp(2,0.5)



#question 4 
#mean 36.8 
#sd =0.4
#using mean and sd

#normal distribution 

#1 st part

pnorm(37.9,36,8,0.4,lower.tail=FALSE)


#2nd part 


pnorm(36.9,36.8,0.4 ) - pnorm(36.3,36.8,0.4)



#3part 


qnorm(0.012,36.8,0.4)


#part 4


qnorm(0.99,36.8,0.4)