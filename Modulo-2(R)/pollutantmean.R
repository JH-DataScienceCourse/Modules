pollutantmean<- function(dir,pollutant, id = 1:332) {
        dados<-data.frame()
        listfiles<-list.files(dir, full.names = TRUE)
        for(c in id) {
                dados <- rbind(dados, read.csv(listfiles[c]))
        }
        media<-mean(dados[,pollutant],na.rm = TRUE)  
        print(media)
}

dir<-"~/IES/Data Science/Curso/Modulo-2(R)/specdata/"

debug(pollutantmean)
pollutantmean(dir,"nitrate")




