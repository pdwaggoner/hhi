# `hhi` An R Package to Calculate and Visualize the Herfindahl-Hirschman Index

## Why should I use `hhi`?

The Herfindahl-Hirschman Index (HHI) is a widely used measure of concentration in a variety of fields including, business, economics, political science, finance, and others. Though intuitively simple to calculate (summed squared market shares of firms/actors in a single space), calculation of HHI can get onerous, especially as the number of firms/actors increases.

Thus, the `hhi` package calculates the concentration of a market/space based on a vector of values corresponding with market shares of individual firms/actors. The packages is intended for simple, intuitive usage requiring the name of the data frame and the name of the vector (variable) corresponding with the market shares in quotation marks, placed directly in the function. Calling the function `hhi` will generate the HHI measure based on the values supplied to the function.

Then, to visualize a time series of HHI values, there is a simple plotting function included, `plot_hhi`. Usage is similarly straightforward, requiring the name of the data frame, the name of the variable corresponding with the time indicator in quotation marks, and then the name of the variable corresponding with the market shares also in quotation marks. Leveraging `ggplot2`, the result is a visual rendering of the supplied vector of HHI values over the specified range of time. The function supports any measure of time, such as, years, quarters, months, etc.

Note that `plot_hhi` is a relatively inflexible function meant for quick visual rendering of a vector of HHI values over a period of time. Users are advised to generate original plots with other plotting functions and packages beyond `hhi` to allow for greater flexibility in customizing visual output according to specific needs.

## How do I use `hhi`?

Below are examples of the pair of functions in the package, including `hhi` to generate the measure, and then `plot_hhi` to plot a vector of HHI values over a specified period of time.

```{r }

# Once released at CRAN, download package from there; until then, access the working R script in this repo
install.packages("hhi")
library(hhi)

# Create some simple data
a <- c(1,2,3) # arbitrary firm id
b <- c(2,3,4) # market share of each firm
x <- data.frame(a,b) # create data frame

# Call the command, hhi, to calculate the HHI (concentration) based on the vector of market share values in object "b" in the data frame "x"
hhi(x, "b")

# Plot a time series of fictitious HHI values
hhi <- c(45,60,50,100,94,15,88,200,215,68,47,62,52,102,96,17,90,202,217,70) # create a vector of HHI values by year
year <-c(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009) # create a vector of corresponding years
data <- data.frame(hhi, year) # combine into a data frame

# Now plot the HHI by year over time using the "plot_hhi" command
plot_hhi(data, "year", "hhi")

```

## How do I get `hhi `?

Though the full package will soon be released on CRAN, you can access the pre-released version (1.0.0) here at my `hhi` [GitHub](https://github.com/pdwaggoner/hhi) repository. Check back for updates and the full release at CRAN soon. If you have any questions or find any bugs requiring fixing, please feel free to [contact me](http://www.philipdwaggoner.com/).

## References
1. Herfindahl, Orris C. 1950. "Concentration in the steel industry." Ph.D. dissertation, Columbia University.
2. Hirschman, Albert O. 1945. "National power and structure of foreign trade." Berkeley, CA: University of California Press.
3. Rhoades, Stephen A. 1993. "The herfindahl-hirschman index." Federal Reserve Bulletin 79: 188.

Thanks and enjoy!
