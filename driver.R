

soruce("./src/cleaner.R")
soruce("./src/scorer.R")


library(yhatr)

model.require <- function() {
  library(plyr)
}

model.predict <- function(data) {
  output <- cleanData(data)
  output <- dataFlow2(output)
  output <- dataFlow3(output)
  output <- scoreData(output)
  output
}

yhat.cofnig <- c(
  username="",
  apikey="",
  env=""
)

yhat.deploy("myModel")
