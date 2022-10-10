library(wooldridge)
library(tidyverse)

#Q4-1
simulation <- function(N) {
  X = rnorm(N, 2, 1)
  eps = rnorm(N, 0, 1)
  Y = 3 + 5*X + eps
  data.frame(X=X, Y=Y)
}
dat <- simulation(5000)
library(ggplot2)
ggplot(dat, aes(x = X)) +
  geom_histogram() + xlab("Xi")
ggplot(dat, aes(x = Y)) +
  geom_histogram() + xlab("Yi")


#Q-4-2

regOLS <- function(N) {
  samp <- dat[sample(nrow(dat), N), ]
  cov_XY <- cov(samp[ ,1], samp[ ,2])
  var_X <- var(samp[, 1])
  data.frame(b0 = mean(samp[,2]) - (cov_XY/var_X)*mean(samp[,1]), b1 = cov_XY/var_X)
}
val1 <- data.frame(b0 = double(), b1 = double())
val2 <- data.frame(b0 = double(), b1 = double())
val3 <- data.frame(b0 = double(), b1 = double())
val4 <- data.frame(b0 = double(), b1 = double())

for (i in 1:100){
  data_sim = regOLS(5)
  val1 <- rbind(val1, data_sim)
}

for (i in 1:500){
  data_sim = regOLS(5)
  val2 <- rbind(val2, data_sim)
}

for (i in 1:1000){
  data_sim = regOLS(5)
  val3 <- rbind(val3, data_sim)
}

for (i in 1:5000){
  data_sim = regOLS(5)
  val4 <- rbind(val4, data_sim)
}
results = data.frame(n= double(), beta0_avg = double(), beta1_avg = double())
results[1:4,'N'] =c(100,500,1000,5000)
results[1,2:3] = colMeans(val1)
results[2,2:3] = colMeans(val2)
results[3,2:3] = colMeans(val3)
results[4,2:3] = colMeans(val4)

print(results)

results = data.frame(n= double(), beta0_avg = double(), beta1_avg = double())
results[1:4,'n'] =c(10,50,500,5000)
results[1,2:3] = colMeans(regOLS(10))
results[2,2:3] = colMeans(regOLS(50))
results[3,2:3] = colMeans(regOLS(500))
results[4,2:3] = colMeans(regOLS(5000))

print(results)

