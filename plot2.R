#load data
source("./_common.R")

print("Rendering plot2.png")

# set the output file name to `plot2.png`
png(filename="plot2.png", width = 480, height = 480)

# plot a line chart of Global Active power vs date time
plot(PowerData$DateTime, PowerData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# turn the output device off i.e. render the file
dev.off()