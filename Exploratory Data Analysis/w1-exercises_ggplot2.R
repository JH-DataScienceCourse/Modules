setwd("~/IES/Data Science/Curso/Exploratory Data Analysis")

library(datasets)
library(ggplot2)
data(mpg)
qplot(displ,hwy,data = mpg)
