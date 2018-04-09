# First, install the "hhi" package, then load the library
install.packages("hhi")
library(hhi)

# Next, read in Data: .txt file of US Men's Footwear Company Market Shares, 2012-2017 (Source: Euromonitor Passport)
footwear <- read.table(".../footwear.txt") # for the .txt file, download "footwear.txt"

# Now, use the "hhi" command to calculate HHI for years 2016 and then 2017
hhi(footwear, "ms.2016")
hhi(footwear, "ms.2017")

# Finally, to visualize HHI over time, calculate and store HHI for each year in the data set (2012-2017)
hhi.12 <- hhi(footwear, "ms.2012")
hhi.13 <- hhi(footwear, "ms.2013")
hhi.14 <- hhi(footwear, "ms.2014")
hhi.15 <- hhi(footwear, "ms.2015")
hhi.16 <- hhi(footwear, "ms.2016")
hhi.17 <- hhi(footwear, "ms.2017")

# Combine and create df for plot
hhi <- rbind(hhi.12, hhi.13, hhi.14, hhi.15, hhi.16, hhi.17)
year <- c(2012, 2013, 2014, 2015, 2016, 2017)
hhi.data <- data.frame(year, hhi)

# Finally, generate HHI time series plot using the "plot_hhi" command
plot_hhi(hhi.data, "year", "hhi")
