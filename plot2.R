#Plot 2
subdata$Date_Time <- as.POSIXct(subdata$Date_Time)

png("plot2.png", height = 480, width = 480)

plot(subdata$Global_active_power ~ subdata$Date_Time, 
     type = "l",
     ylab = "Global Active Power (kilowatts)", 
     xlab = "")

dev.off()