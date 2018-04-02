# Basic intuition

# First, create some data and use the function
a <- c(1,2,3)
b <- c(2,3,4)
x <- data.frame(a,b)

hhi <- function(x, s){
  d <- x[ ,s]
  for(i in 1:length(d)) {
    d[i] <- d[i]^2
    hhi <- sum(d)
  }
  return(hhi)
}

# Now take it for a quick spin 
hhi(x, "b") # should equal 29 (corroborate manually with (2^2)+(3^2)+(4^2))

## Then, quick plotting function with an example
plot.hhi <- function(x,t,h){

  t <- x[ ,t]
  h <- x[ ,h]

  hhi.plot <- ggplot(x, aes(t, h)) +
    geom_point() +
    geom_line() +
    xlab("Time") +
    ylab("Herfindahl-Hirschman Index") +
    ggtitle("Herfindahl-Hirschman Index Over Time") +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5))

  return(hhi.plot)

}

hhi <- c(45,60,50,100,94,15,88,200,215,68,47,62,52,102,96,17,90,202,217,70)
year <- c(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009)
data <- data.frame(hhi, year)
plot.hhi(data, "year", "hhi")
