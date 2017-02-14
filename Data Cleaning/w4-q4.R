setwd("~/IES/Data Science/Curso/Data Cleaning")
eduData  <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
eduFile <- "./data/EDU.csv"
download.file(eduData, eduFile, method = "curl")

eduData <- read.csv(eduFile, stringsAsFactors = F)
eduData <- eduData[, c("CountryCode", "Special.Notes")]

mergedData <- merge(gdpData, eduData, as.x = "CountryCode", as.y = "CountryCode")
## Fiscal Year data is stored in Special.Notes. Find how many of 'em have "Fiscal year end June"
length(grep("[Ff]iscal year end(.*)+June", mergedData$Special.Notes))