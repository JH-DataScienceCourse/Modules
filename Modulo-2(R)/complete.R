complete <- function(dir, id = 1:332) {
        dados<-data.frame()
        nobs<-numeric()
        listfiles<-list.files(dir, full.names = TRUE)
        
        for(c in id) {
                arquivos <- read.csv(listfiles[c])
                nobs<-sum(complete.cases(arquivos))
                dados<-rbind(dados,data.frame(c,nobs))
        }
colnames(dados)<-c("ID","Nobs")
print(dados)
}

dir<-"~/IES/Data Science/Curso/Modulo-2(R)/specdata/"

set.seed(42)
cc <- complete(dir, 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
