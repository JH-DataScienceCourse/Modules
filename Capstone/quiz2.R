#Remove all weird characters
cleanedTwitter<- iconv(twitter, 'UTF-8', 'ASCII', "byte")
#Sample 10000 
twitterSample<-sample(cleanedTwitter, 10000)
doc.vec <- VectorSource(twitterSample)                      
doc.corpus <- Corpus(doc.vec)
#Convert to lower case
doc.corpus<- tm_map(doc.corpus, tolower)
#Remove all punctuatins
doc.corpus<- tm_map(doc.corpus, removePunctuation)
#Remove all numbers 
doc.corpus<- tm_map(doc.corpus, removeNumbers)
##Remove whitespace
doc.corpus <- tm_map(doc.corpus, stripWhitespace)
##Force everything back to plaintext document
doc.corpus <- tm_map(doc.corpus, PlainTextDocument)
