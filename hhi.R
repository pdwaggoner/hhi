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

## Then, measures of uncertainty

## Then, plotting and other diagnostic functions
