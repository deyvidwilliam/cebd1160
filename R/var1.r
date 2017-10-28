#Frequency plot of the 1st variable "Firefighter units deployed per incident"

#Install package RCurl if it's not present
install.packages("RCurl")

#Load required package RCurl
library(RCurl)

#Reading dataset from GITHUB
x <- getURL("https://raw.githubusercontent.com/deyvidwilliam/cebd1160/master/data/3interventions_casernes_distance_2015_2017.csv") 
y <- read.csv(text = x)

#Frequency plot of the variable "units deployed per incident" available at column #11 of the dataset 
# X axe limited to 30 for better visualization
# Number of breakpoints (bins) modified to match the highest value of the variable

hist(y[,11], main = "Frequency plot (histogram) for\n firefighter units deployed per incident", col="green", xlab="Units deployed", ylab = "Incidents", xlim=c(0,30), breaks=max(y[,11]))


