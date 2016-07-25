getwd()
setwd("~/JH Data Science/Exploratory Data Analysis/Week4")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
dir()
names(NEI)
names(SCC)
dim(NEI)
dim(SCC)    
head(NEI)
head(SCC)

install.packages("ggplot2")
install.packages("dplyr")
library("ggplot2")
library("dplyr")



vehicleMatches  <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
NEISCC <- merge(balt, SCC[vehicleMatches, ], by="SCC")

# summing emission data per year per type
totalEmissions <- tapply(NEISCC$Emissions, NEISCC$year, sum)

# plotting
barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission from motor sources in Baltimore")




                                 

                                            
