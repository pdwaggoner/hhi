## In Roxygen syntax -- update accordingly

#' Plots a Herfindahl-Hirschman Index Time Series
#'
#' Generates a plot of a vector of Herfindahl-Hirschman Index (HHI) values over a period of time
#'@usage plot_hhi(x, "t", "h")
#'@param x Name of the data frame
#'@param t Name of the vector (variable) from the data frame, x, corresponding with a measure of time (year, month, etc.)
#'@param h Name of the vector (variable) from the data frame, x, corresponding with the HHI values
#'@details Allows for placing objects directly from working datasets (including, data frame, measure of time, and stored HHI values in quotes) into the function for intuitive usage. Function supports any measure of time.
#'@return hhi.plot A plot of HHI values over time
#'@note The "plot_hhi" function is meant for quick visual rendering of a vector of HHI values over a period of time leveraging ggplot2. Users are advised to generate original plots with other plotting packages beyond "hhi" to allow for greater flexibility in customizing visual output according to specific needs.
#'@references Hirschman, Albert O. 1945. "National power and structure of foreign trade." Berkeley, CA: University of California Press.
#'@references Herfindahl, Orris Clemens. 1950. "Concentration in the steel industry." Ph.D. dissertation, Columbia University.
#'@references Rhoades, Stephen A. 1993. "The herfindahl-hirschman index." Federal Reserve Bulletin 79: 188.
#'@examples
#'hhi <- c(45,60,50,100,94,15,88,200,215,68,
#'47,62,52,102,96,17,90,202,217,70)
#'year <- c(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,
#'2000,2001,2002,2003,2004,2005,2006,2007,2008,2009)
#'data <- data.frame(hhi, year)
#'plot_hhi(data, "year", "hhi")
#'@export
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
