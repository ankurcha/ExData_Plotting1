## common data loading functions

library(sqldf)
library(dplyr)

data_path = "~/Downloads/household_power_consumption.txt"

# read the data and apply the filter such that we only read in the data that is where
# `Date` is 1/2/2007 - 2/2/2007
if (!exists("PowerData")) {
  print(paste("Reading data from file: ", data_path))
  PowerData <- read.csv.sql(data_path, 
                             header = TRUE, 
                             sep = ";", 
                             row.names = FALSE, 
                             eol = "\n",
                             sql = "select * from file where Date in ('1/2/2007', '2/2/2007')")
  PowerData <- PowerData %>%
                mutate(Date = as.Date(Date, format = "%d/%m/%Y")) %>%
                mutate(DateTime = as.POSIXct(paste(Date, Time)))
}
