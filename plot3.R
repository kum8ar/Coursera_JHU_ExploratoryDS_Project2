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


data <- aggregate(Emissions ~ year + type, balt, sum)

ggplot(data, aes(year, Emissions, color = type))+
          geom_line() +
          xlab("Year") +
          ylab(expression("Total PM"[2.5]*" Emissions")) +
          ggtitle("Total Emissions per type in Baltimore")




                                 

                                            
