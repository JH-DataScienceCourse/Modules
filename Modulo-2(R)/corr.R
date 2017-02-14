corr <- function(directory, threshold = 0) {
        files_full <- list.files(directory, full.names = TRUE)
        dat <- vector(mode = "numeric", length = 0)
        
        for (i in 1:length(files_full)) {
                moni_i <- read.csv(files_full[i])
                csum <- sum((!is.na(moni_i$sulfate)) & (!is.na(moni_i$nitrate)))
                if (csum > threshold) {
                        tmp <- moni_i[which(!is.na(moni_i$sulfate)), ]
                        submoni_i <- tmp[which(!is.na(tmp$nitrate)), ]
                        dat <- c(dat, cor(submoni_i$sulfate, submoni_i$nitrate))
                }
        }
        
        dat
}

dir<-"~/IES/Data Science/Curso/Modulo-2(R)/specdata/"
cr <- corr(dir, 2000)                
n <- length(cr)                
cr <- corr(dir, 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))