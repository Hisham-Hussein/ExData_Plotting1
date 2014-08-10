# sourcing the file for getting and cleaning data
source("getAndCleanData.R")


# plot to a png device
png("plot2.png")

# Producing the required plot
plot(target.ds$Date, target.ds$Global_active_power,
     type = 'l', xlab = "Day", ylab = "Global active power (Kilowatts)")


# shutting down the device
dev.off()
