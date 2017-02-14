setwd("~/IES/Data Science/Curso/Data Cleaning")

gdpFile<-"./data/getdata-data-GDP.csv"
gdpData <- read.csv(gdpFile, skip = 5, nrows = 190, stringsAsFactors = F, header = F)
gdpData <- gdpData[, c(1, 2, 4, 5)]
colnames(gdpData) <- c("CountryCode", "Rank", "Country.Name", "GDP.Value")

## replace commas with nothing with gsub, convert to numeric and calculate mean
mean(as.numeric(gsub(",", "", gdpData$GDP.Value)))