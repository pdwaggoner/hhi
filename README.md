# `hhi` An R Package to Calculate and Visualize the Herfindahl-Hirschman Index
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/hhi)](http://cran.r-project.org/package=hhi)
[![DOI](http://joss.theoj.org/papers/10.21105/joss.00828/status.svg)](https://doi.org/10.21105/joss.00828)
[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/hhi)](http://cranlogs.r-pkg.org/)
[![CRAN RStudio Mirror Downloads](http://cranlogs.r-pkg.org/badges/monthly/hhi)](http://cranlogs.r-pkg.org/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=plastic)](https://github.com/pdwaggoner/hhi/pulls)

## Why should I use `hhi`?

The Herfindahl-Hirschman Index (HHI) is a widely used measure of concentration in a variety of fields including, business, economics, political science, finance, and others. Though intuitively simple to calculate (summed squared market shares of firms/actors in a single space), calculation of HHI can get onerous, especially as the number of firms/actors increases.

Thus, the `hhi` package calculates the concentration of a market/space based on a vector of values corresponding with market shares of individual firms/actors. The packages is intended for simple, intuitive usage requiring the name of the data frame and the name of the vector (variable) corresponding with the market shares in quotation marks, placed directly in the function. Calling the function `hhi` will generate the HHI measure based on the values supplied to the function.

Then, to visualize a time series of HHI values, there is a simple plotting function included, `plot_hhi`. Usage is similarly straightforward, requiring the name of the data frame, the name of the variable corresponding with the time indicator in quotation marks, and then the name of the variable corresponding with the market shares also in quotation marks. Leveraging `ggplot2`, the result is a visual rendering of the supplied vector of HHI values over the specified range of time. The function supports any measure of time, such as, years, quarters, months, etc.

Note that `plot_hhi` is a relatively inflexible function meant for quick visual rendering of a vector of HHI values over a period of time. Users are advised to generate original plots with other plotting functions and packages beyond `hhi` to allow for greater flexibility in customizing visual output according to specific needs.

## How do I use `hhi`?

Below are examples of the pair of functions in the package, including `hhi` to generate the measure, and then `plot_hhi` to plot a vector of HHI values over a specified period of time.

```{R}

install.packages("hhi")
library(hhi)

# Create some simple data
a <- c(1,2,3,4) # firm id
b <- c(20,30,40,10) # market share of each firm (should total 100% of market share)
x <- data.frame(a,b) # df

# Call hhi to calculate the HHI based on the vector of market share values in object b in data frame x
hhi(x, "b")

# Plot a time series of fictitious HHI values
hhi <- c(45,60,50,100,94,15,88,200,215,68,
47,62,52,102,96,17,90,202,217,70) # create a vector of HHI values by year
year <-c(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,
2000,2001,2002,2003,2004,2005,2006,2007,2008,2009) # create a vector of corresponding years
data <- data.frame(hhi, year) # combine into a data frame

# Now plot the HHI by year over time using the "plot_hhi" command
plot_hhi(data, "year", "hhi")

```

## How do I get `hhi `?

You can download the package from [CRAN](https://CRAN.R-project.org/package=hhi). If you have any questions or find any bugs requiring fixing, feel free to open an issue ticket, pull request, or simply [contact me](http://www.philipdwaggoner.com/) if you would prefer.

Please cite the JOSS paper associated with the package using the TeX entry:

@article{hhi2018,<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;title = {The hhi Package: Streamlined Calculation and Visualization of Herfindahl-Hirschman Index Scores},<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;author = {Philip D. Waggoner},<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;journal={Journal of Open Source Software},<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;year = {2018},<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;volume={3},<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;number={28, 828},<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;note={DOI: 10.21105/joss.00828}<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

## References
1. Herfindahl, Orris C. 1950. "Concentration in the steel industry." Ph.D. dissertation, Columbia University.
2. Hirschman, Albert O. 1945. "National power and structure of foreign trade." Berkeley, CA: University of California Press.
3. Rhoades, Stephen A. 1993. "The herfindahl-hirschman index." Federal Reserve Bulletin 79: 188.
4. Waggoner, Philip D. 2018. "The hhi Package: Streamlined Calculation and Visualization of Herfindahl-Hirschman Index Scores." Journal of Open Source Software, 3(28), 828.

Thanks and enjoy!
