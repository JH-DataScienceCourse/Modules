library(tm)

file.info("Coursera-Swiftkey/final/en_US/en_US.blogs.txt")$size / 1024^2

blogs <- readLines("Coursera-Swiftkey/final/en_US/en_US.blogs.txt")
news <- readLines("Coursera-Swiftkey/final/en_US/en_US.news.txt")
twitter <- readLines("Coursera-Swiftkey/final/en_US/en_US.twitter.txt")
length(twitter)

max(nchar(blogs))
max(nchar(news))
max(nchar(twitter))


love_count <- sum(grepl("love", twitter))
hate_count <- sum(grepl("hate", twitter))
love_count / hate_count

biostats <- grep("biostats", twitter)
twitter[biostats]

sentenceTwitter <- grep("A computer once beat me at chess, but it was no match for me at kickboxing",twitter)
length(sentenceTwitter)
