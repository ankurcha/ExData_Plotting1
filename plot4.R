#load data
source("./_common.R")

print("Rendering plot4.png")

# set the output file name to `plot2.png`
png(filename="plot4.png", width = 480, height = 480)

# create the canvas
par(mfrow=c(2,2)) # all plots on one page

# plot 1
plot(PowerData$DateTime, PowerData$Global_active_power, ylab = "Global Active Power", xlab = "", type = "l")

# plot 2
plot(PowerData$DateTime, PowerData$Voltage, ylab = "Voltage", xlab = "datetime", type = "l")

# plot 3
plot(PowerData$DateTime, PowerData$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(PowerData$DateTime, PowerData$Sub_metering_1, col = "black")
lines(PowerData$DateTime, PowerData$Sub_metering_2, col = "red")
lines(PowerData$DateTime, PowerData$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)

# plot 4
plot(PowerData$DateTime, PowerData$Global_reactive_power, ylab = "Global_reactive_power", xlab = "datetime", type = "l")

# render plot
dev.off()