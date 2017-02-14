d1 <- read.csv("~/IES/Data Science/Curso/Modulo-2(R)/data/d1.txt", header=FALSE, row.names=1, sep=";")
d2 <- read.csv("~/IES/Data Science/Curso/Modulo-2(R)/data/d2.txt", header=FALSE, row.names=1, sep=";")
d3 <- read.csv("~/IES/Data Science/Curso/Modulo-2(R)/data/d3.txt", header=FALSE, row.names=1, sep=";")
d4 <- read.csv("~/IES/Data Science/Curso/Modulo-2(R)/data/d4.txt", header=FALSE, row.names=1, sep=";")
names(d1)<-c("tf-idf")
names(d2)<-c("tf-idf")
names(d3)<-c("tf-idf")
names(d4)<-c("tf-idf")
d1["amor",1]
