#load data
source("./_common.R")

# set the output file name to `plot1.png`
png(filename="plot1.png", width = 480, height = 480)

# create the histogram
hist(PowerData$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

# turn the output device off i.e. render the file
dev.off()
