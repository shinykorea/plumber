#* @serializer unboxedJSON
#* @get /logistic
logistic <- function(){
  model <- glm(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris, family=binomial(link="logit"))
  return (list(coeff=model$coefficients, residual=model$residuals, fitted=model$fitted.values))
}
