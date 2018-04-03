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
plot_hhi <- function(x,t,h){
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package \"ggplot2\" needed for this function to work. Please install it.",
         call. = FALSE)
  }

  t <- x[ ,t]
  h <- x[ ,h]

  hhi.plot <- ggplot2::ggplot(x, ggplot2::aes(t, h)) +
    ggplot2::geom_point() +
    ggplot2::geom_line() +
    ggplot2::xlab("Time") +
    ggplot2::ylab("Herfindahl-Hirschman Index") +
    ggplot2::ggtitle("Herfindahl-Hirschman Index Over Time") +
    ggplot2::theme_bw()

  return(hhi.plot)

}
