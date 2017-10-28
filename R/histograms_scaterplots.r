install.packages(“RCurl”)
library(RCurl)

x <- getURL("https://raw.githubusercontent.com/deyvidwilliam/cebd1160/master/data/3interventions_casernes_distance_2015_2017.csv") 

y <- read.csv(text = x)

#Help
?hist

#One variable
hist(y[,16], main = "Histogram - Distance casernes x incidents", col="red", xlab="X label", ylab = "Y label") 
hist(y[,16], main = "Histogram - Distance casernes x incidents", col="red", xlab="X label", ylab = "Y label", xlim=c(0,10)) 

plot(y[,11], main = "Scaterplot - Units deployed", col="pink", ylab = "Number of units deployed") 

#Two variables
plot(y[,16], y[,11], main = "Units x Distance ", col="red") 

