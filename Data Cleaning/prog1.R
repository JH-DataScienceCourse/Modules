readData<- function(dir, id = 1:45908) {
        dados<-data.frame()
        listfiles<-list.files(dir, full.names = TRUE)
        for(c in id) {
                print("reading")
                print(c)
                dados <- read.table(listfiles[c], row.names=1, sep = ";")
        }

}

setwd("~/IES/Data Science/Curso/Data Cleaning")
dir<-"aTribuna"

readData(dir,id = 1:10)

