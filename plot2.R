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



# reading and subsetting data
balt <- subset(NEI, fips == "24510")

# summing emissions per year
totalEmissions <- tapply(balt$Emissions, balt$year, sum)

# plotting
barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission per year in Baltimore")




                                 

                                            
