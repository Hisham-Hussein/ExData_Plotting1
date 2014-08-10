# sourcing the file for getting and cleaning data
source("getAndCleanData.R")


# plot to a png device
png("plot3.png")

# Producing the required plot
png("plot1.png")

hist(target.ds$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)", ylab = "Frequency",
     col = "red")

# Shut down the png device
dev.off()

