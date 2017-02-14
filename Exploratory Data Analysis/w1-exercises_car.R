setwd("~/IES/Data Science/Curso/Exploratory Data Analysis")

library(datasets)
library(lattice)
data(cars)
with(cars,plot(speed,dist))
