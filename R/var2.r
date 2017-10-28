#Frequency plot of the 2nd variable "Distance between fire stations (casernes) and incidents"

#Install package RCurl if it's not present
install.packages("RCurl")

#Load required package RCurl
library(RCurl)

#Reading dataset from GITHUB
x <- getURL("https://raw.githubusercontent.com/deyvidwilliam/cebd1160/master/data/3interventions_casernes_distance_2015_2017.csv") 
y <- read.csv(text = x)

#Frequency plot of the variable "Distance between fire stations and incidents" available at column #16 of the dataset 
# X axe limited to 10Km for better visualization
hist(y[,16], main = "Frequency plot (histogram) for\n distance fire stations x incidents", col="red", xlab="Kilometers", ylab = "Incidents", xlim=c(0,10))
