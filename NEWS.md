---
title: "NEWS.md"
author: "Philip D. Waggoner"
date: "4/13/2018"
output: html_document
---

# `hhi` 1.1.0
## Calculate and Visualize the Herfindahl-Hirschman Index

A few weeks ago, I released the package `hhi` for quick calculation and visualization of Herfindahl-Hirschman Index scores. Since its release, I made a few changes, somewhat major, but mostly minor, to the package. They mostly consist of adding some defensive debugging strategies, in large part per Josh Grode's (Encompass Insurance) suggestions. I appreciate the feedback. As always, if you spot anything that requires some updates, please don't hesitate to reach out. If necessary, I will make the changes, but at the very least we can have a chat about the issue. Thanks again and enjoy the package!

### Major changes

* Added warning message if the vector of share values, `s`, does not total 100. Importantly, while the package will calculate the HHI score for any numeric input, typical use of the HHI is for all firms holding a share in the market. Thus, the function will still work, but the user will be given a warning to this effect.

* Added `stop` error if the `x` object corresponding to the data frame is not a data frame (e.g., a matrix).

* Added `stop` error if the vector of market shares `s` is not numeric (e.g., a factor). The error message will let you know what type of object/value you supplied to allow for easy diagnosis and correction.

* Added `stop` error if any value in the vector of market shares `s` is non-positive, given the inability for a firm to retain a negative share in a market (e.g., -4%).

### Minor changes

* Updated the example data to total 100% of the market share (formerly `c(2,3,4)`; now `c(20,30,40,10)`).

* Updated the `README.md` file to denote the package is now released on CRAN.

## How do I get `hhi `?

The package is released on CRAN. If you have any questions or find any bugs requiring fixing, please feel free to contact me (see the `DESCRIPTION` file for more). Thanks and enjoy!
