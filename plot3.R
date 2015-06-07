#load data
source("./_common.R")

print("Rendering plot3.png")

# set the output file name to `plot2.png`
png(filename="plot3.png", width = 480, height = 480)

# create the canvas
plot(PowerData$DateTime, PowerData$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(PowerData$DateTime, PowerData$Sub_metering_1, col = "black")
lines(PowerData$DateTime, PowerData$Sub_metering_2, col = "red")
lines(PowerData$DateTime, PowerData$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)

# render plot
dev.off()