distancia <- function(file1,file2) {
        file1 <- read.table("aTribuna/004062006at2.txt.idx",  stringsAsFactors=FALSE, encoding="UTF-8", sep=";", quote="\"",col.names = c("term","tfidf"), blank.lines.skip = TRUE)
        file2 <- read.table("aTribuna/05092005at2.txt.idx", stringsAsFactors=FALSE, encoding="UTF-8", sep=";", quote="\"",col.names = c("term","tfidf"), blank.lines.skip = TRUE)
        soma<-0L
        aux<-c(file1$term,file2$term)
        termo<-sort(unique(aux))
        tam<-length(termo)
        for(nr in 1:tam) {
                val1<-which(termo[nr] == file1)   
                if(!length(val1)) 
                        val1<-0
                else
                        val1<-file1$tfidf[which(termo[nr] == file1)]
                
                val2<-which(termo[nr] == file2)
                if(!length(val2)) 
                        val2<-0
                else
                        val2<-file2$tfidf[which(termo[nr] == file2)]
                
                soma<-soma + (val1 - val2)^2
        }
        return(sqrt(soma))
}