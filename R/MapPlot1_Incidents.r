#Install package GGMap if it's not present
install.packages("ggmap")

#Load required package GGmap
library(ggmap)

#Reading dataset from GITHUB
mydata = read.csv("https://raw.githubusercontent.com/deyvidwilliam/cebd1160/master/data/3interventions_casernes_distance_2015_2017.csv")

#Extracting latitude and longitude of all incidents of the dataset into variable "incidents"
incidents = data.frame(mydata$incident_nbr, mydata$longitude, mydata$latitude)
colnames(incidents) = c('incident','lon','lat')

#Looking for "Island of Montreal" in Google Maps
mtl = as.numeric(geocode("Island of Montreal"))
MTLMap = ggmap(get_googlemap(center=mtl, scale=2, zoom=10), extent="normal")

#Ploting data points in the map
MTLMap + geom_point(aes(x=lon, y=lat), data=incidents, col="blue", alpha=0.5)
