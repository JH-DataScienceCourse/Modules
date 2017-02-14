library(data.table)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
f <- file.path(getwd(), "jeff.jpg")
download.file(url, f, mode = "wb")
img <- readJPEG(f, native = TRUE)
quantile(img, probs = c(0.3, 0.8))
