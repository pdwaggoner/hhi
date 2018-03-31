# Basic intuition

# First, create some data and use the function (should equal 29: ((2^2) + (3^2) + (4^2)))
a <- c(1,2,3)
b <- c(2,3,4)
x <- data.frame(a,b)

hhi <- function(x, s){
  d <- x[ ,s]
  for(i in 1:length(d)) {
    z[i] <- d[i]^2
    hhi <- sum(z)
  }
  return(hhi) 
}

## Next, include time function

## Then, measures of uncertainty, e.g.,
mu <- mean(s) # s = market share/vector used in hhi above
sigma <- sd(s)
se <- sigma/sqrt(4)
upper = mu + 1.96*se
lower = mu - 1.96*se

zs <- function(m, mu, sigma) {
  (mean(m)-mu)/(sigma/sqrt(4)) 
  }

z <- numeric(length(d))
for(i in 1:length(d)) {
  z[i] <- zs(m[i], mu, sigma)
  }

for(i in 1:length(d)) {
  upper[i] <- m[i] + 1.96*se
  }

for(i in 1:length(d)) {
  lower[i] <- m[i] - 1.96*se
  }

## Then, plotting and other diagnostic functions
