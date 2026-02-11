  #自定义函数⬇️
estimate <- function(x,y){
  mean.x <- mean(x,na.rm = T)
  mean.y <- mean(y,na.rm = T)
  sxy <- sum((x-mean.x)^2)
  sxy <- sum((x-mean.y)^2)
  sxy <- sum((y-mean.y)*(x-mean.x))
  #计算回归系数⬇️
  alpha2 <- sxy/sxx
  alpha1 <- mean.y-alpha2*mean.x
  #计算回归系数标准差,beta的标准差⬇️
  n <- length(x)
  sigma <- sqrt(sum(y-alpha1-alpha2*x)^2/(n-2))
  #分别把sst，ssr，sse全求出来⬇️
  forecast.y <- alpha1 + alpha2*x
  sst <- sum((y-mean.y)^2)
  ssa <- sum((forecast.y-mean.y)^2)
  sse <- sum((y-forecast.y)) 
  #计算判定系数R平方和
  R.square <- ssa/sst
  R.square1 <- sxy^2/(sxx*syy)
  R.square2 <- (cor(y,forecast.y)^2)
  # 返回参数估计值，判定系数R平方和
  return(list(alpha1, alpha2, sigma, R.square, R.square1, R.square2))
}
         
