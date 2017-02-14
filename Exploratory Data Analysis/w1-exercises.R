setwd("~/IES/Data Science/Curso/Exploratory Data Analysis")

pollution <- read.csv("avgpm25.csv", colClasses = c("numeric","character","factor","numeric","numeric"))
head(pollution)

# boxplot(pollution$pm25,col = "blue")
abline(h = 12)

hist(pollution$pm25,col = "blue", breaks = 50)

rug(pollution$pm25)
barplot(table(pollution$region),col = "wheat",main = "Number of coutries")

boxplot(pm25 ~ region, data = pollution,col = "blue")
