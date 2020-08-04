# `hhi` An R Package to Calculate & Visualize the Herfindahl-Hirschman Index
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/hhi)](http://cran.r-project.org/package=hhi)
[![DOI](http://joss.theoj.org/papers/10.21105/joss.00828/status.svg)](https://doi.org/10.21105/joss.00828)
[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/hhi)](http://cranlogs.r-pkg.org/)
[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/hhi)](http://www.r-pkg.org/pkg/hhi)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=plastic)](https://github.com/pdwaggoner/hhi/pulls)
[![Documentation](https://img.shields.io/badge/documentation-hhi-orange.svg?colorB=E91E63)](https://www.r-pkg.org/pkg/hhi)

## Why should I use `hhi`?

The Herfindahl-Hirschman Index (HHI) is a widely used measure of concentration in a variety of fields including, business, economics, political science, finance, and others. Though intuitively simple to calculate (summed squared market shares of firms/actors in a single space), calculation of HHI can get onerous, especially as the number of firms/actors increases.

The `hhi` package calculates the concentration of a market/space based on a vector of values corresponding with market shares of individual firms/actors. The packages is intended for intuitive usage requiring the name of the data frame and the name of the vector (variable) corresponding with the market shares in quotation marks, passed to the function. Calling `hhi` will return HHI scores.

To visualize a time series of HHI scores, `hhi` includes a simple plotting function, `plot_hhi`. Usage is similarly straightforward, requiring passage of the data frame, the variable corresponding with the time indicator in quotation marks, and a vector of HHI scores also in quotation marks, to the function. Leveraging `ggplot2`, the result is a visual rendering of the supplied vector of HHI values over the specified range of time. The function supports any measure of time, such as, years, quarters, months, etc. Importantly, as `ggplot2` is the base, users can overwrite the default values (e.g., axis titles and `theme_*`) with traditional `ggplot2` syntax. See this extension in the example below.

## Installation

For the most recent dev version:

```{R}
devtools::install_github('pdwaggoner/hhi')
```

For the latest stable version (on [CRAN](https://CRAN.R-project.org/package=hhi)):

```{R}
install.packages("hhi")
library(hhi)
```

## How do I use `hhi`?

`hhi` has two main functions: `hhi` and `plot_hhi`. Below are examples of each, starting with `hhi`, which calculates HHI scores,and then `plot_hhi`, which plots a vector of HHI scores over a specified period of time.

#### `hhi`
```{R}
install.packages("hhi")
library(hhi)

# Create some simple data
a <- c(1,2,3,4) # firm id
b <- c(20,30,40,10) # market share of each firm (should total 100% of market share)
x <- data.frame(a,b) # df

# Calculate the HHI scores based on the vector of market share values in object b in data frame x
hhi(x, "b")
```

#### `plot_hhi`
```{R}
# First, create a time series of fake HHI scores
hhi <- c(45,60,50,100,94,15,88,200,215,68,47,62,52,102,96,17,90,202,217,70)
year <-c(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009)
data <- data.frame(hhi, year) # combine into a data frame

# Now plot the HHI by year over time
plot_hhi(data, "year", "hhi")
```

#### Customizing `plot_hhi`
```{R}
# First, create a time series of fake HHI scores
hhi <- c(45,60,50,100,94,15,88,200,215,68,47,62,52,102,96,17,90,202,217,70)
year <-c(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009)
data <- data.frame(hhi, year) # combine into a data frame

# Customize a `plot_hhi` object
library(ggplot2)

# Update theme and axis labels to overwrite default values
plot_hhi(data, "year", "hhi") + 
  theme_classic() + 
  labs(x = "Time (Years)", 
       y = "HHI Scores", 
       title = "HHI by Year", 
       subtitle = "Built via the 'hhi' Package")
```

## Contact, Citing and Issues

If you have any questions or find any bugs requiring fixing, feel free to open an issue, pull request, or simply [contact me](https://pdwaggoner.github.io/) if you would prefer.

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
