
cleanText <- function(text = NULL) {
        if(length(text) == 0) 
                return("ERROR - Text to clean not found")
        library(stylo)
        library(XML)
        ntext <-character()
        ntext <- delete.markup(text, markup.type = "plain")
        ntext <- VectorSource(ntext)
        ntext <- Corpus(ntext)
        ntext <- tm_map(ntext, tolower)
        ntext <- tm_map(ntext, removePunctuation)
        ntext <- tm_map(ntext, removeNumbers)
        ntext <- tm_map(ntext, stripWhitespace)
        ntext <- tm_map(ntext, PlainTextDocument)
        return(ntext)
}



