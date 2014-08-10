# sourcing the file for getting and cleaning data
source("getAndCleanData.R")


# plot to a png device
png("plot3.png")

# Producing the required plot
with(target.ds, {
    plot(Date, Sub_metering_1, type = "n",
         xlab = "datetime", ylab = "Energy Submetering")
    
    plot(Date, Sub_metering_1, type = "l",
         xlab = "datetime", ylab = "Energy Submetering")
    
    lines(Date, Sub_metering_2, type = "l",
          xlab = "datetime", ylab = "Energy Submetering",
          col = "red")
    
    lines(Date, Sub_metering_3, type = "l",
          xlab = "datetime", ylab = "Energy Submetering",
          col = "blue")
    legend("topright", lty = 1, col = c("black", "red", "blue"),
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})

# shut down the png device
dev.off()