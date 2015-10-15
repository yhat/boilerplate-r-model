

my.glm <- glm(target ~ var1 + var2 + var3, data=my.training.data)



scoreData <- function(data) {
  data$score <- predict(my.glm, data=data, type="response")
}
