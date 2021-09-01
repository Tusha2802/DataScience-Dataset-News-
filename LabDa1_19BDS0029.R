library(jsonlite)
library(httr)
res <- paste(
  "https://api.currentsapi.services/v1/latest-news?",
  "language=en&",
  "apiKey=22CGDV57vo-xTG5AGfSkm2ysLfIqhGM2EeKLf5aFWxT6aaVR"
  ,sep = "")
data <- fromJSON(res)
data

data1 <- data$news[, c(1,2,3,4,5,6,7,9)]
toJSON(data1, pretty = TRUE)

write.table(data1,file = "news_19BDS0029.csv",sep=",",append=TRUE, row.names = FALSE,
            col.names = ifelse(data$news$published == "2021-08-19 19:08:20 +0000", TRUE,FALSE))


View(data)
