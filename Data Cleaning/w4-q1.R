setwd("~/IES/Data Science/Curso/Data Cleaning")
library(curl)
library(htmltools)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
fileName <- tempfile()
download.file(fileURL, fileName, method = "curl")

data <- read.csv(fileName)

strsplit(names(data), "\\wgtp")[123]