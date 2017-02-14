setwd("~/IES/Data Science/Curso/Data Cleaning")
if(!file.exists("./data")) {
        dir.create("./data")
}
fileUrl<-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile = "./data/Baltimore_Fixed_Speed_Cameras.csv",method = "curl")
cameraData<-read.csv("./data/cameras.csv")
names(cameraData)

splitNames <- strsplit(names(cameraData),"\\.")

library(stringr)
substr("delermando branquinho",1,8)
paste("delermando","branquinho")
paste0("delermando","branquinho")
