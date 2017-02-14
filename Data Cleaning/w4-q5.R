setwd("~/IES/Data Science/Curso/Data Cleaning")

library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 
table(grepl("^2012",sampleTimes))

sampleTime_2012<-sampleTimes[grepl("^2012",sampleTimes)]
sampleTime_2012_weekday<-weekdays(sampleTime_2012)
table(grepl("^?????????",sampleTime_2012_weekday))