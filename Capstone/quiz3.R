library(wordcloud)
## Loading required package: RColorBrewer
wordcloud(doc.corpus, max.words = 200, random.order = FALSE,
          rot.per=0.35, use.r.layout=FALSE,colors=brewer.pal(8, "Dark2"))
