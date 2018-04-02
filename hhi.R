# Basic intuition
hhi <- function(x, s){
  d <- x[ ,s]
  for(i in 1:length(d)) {
    d[i] <- d[i]^2
    hhi <- sum(d)
  }
  return(hhi)
}

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
