# sourcing the file for getting and cleaning data
source("getAndCleanData.R")


# plot to a png device
png("plot4.png")

par(mfrow = c(2, 2))


with(target.ds, {
    
    # Plotting date time vs. Global Active Power
    plot(Date, Global_active_power, type = 'l', xlab = "datetime", ylab = "Global Active Power")
    
    # Plotting date time vs. voltage
    plot(Date, Voltage, type = 'l', xlab = "datetime", ylab = "Voltage")
    
    # Plotting date time vs. Energy Submetering
    with(target.ds, {
        plot(Date, Sub_metering_1, type = "n", xlab = "datetime", ylab = "Energy Submetering")
        
        lines(Date, Sub_metering_1, type = "l", xlab = "datetime", ylab = "Energy Submetering")
        
        lines(Date, Sub_metering_2, type = "l",  xlab = "datetime", ylab = "Energy Submetering",
              col = "red")
        
        lines(Date, Sub_metering_3, type = "l", xlab = "datetime", ylab = "Energy Submetering",
              col = "blue")
        
        legend("topright", lty = 1, col = c("black", "red", "blue"),
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    })
        
    
    
    # Plotting date time vs. Global Reactive Power
    plot(Date, Global_reactive_power, type = 'l', xlab = "datetime", ylab = "Global Reactive Power")
    
    
})


# shut down the png device
dev.off()