library(rjson)
setwd("~/IES/Data Science/Curso/Data Cleaning")
dir<-"enem"
enem<-data.frame()
enem<-fromJSON("enem/enem-2015-07-20.json")
