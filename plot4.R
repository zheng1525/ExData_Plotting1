#Plot 4
png("plot4.png", height = 480, width = 480)

par(mfrow = c(2, 2))

#top left plot
plot(subdata$Global_active_power ~ subdata$Date_Time, 
     type = "l", 
     ylab = "Global Active Power", 
     xlab = "")

#top right plot
plot(subdata$Voltage ~ subdata$Date_Time, 
     type = "l", 
     ylab = "Voltage", 
     xlab = "datetime")

#bottom left plot
plot(subdata$Sub_metering_1 ~ subdata$Date_Time, 
     type = "l", 
     ylab = "Energy sub metering", 
     xlab = "")
lines(subdata$Sub_metering_2 ~ subdata$Date_Time, col = "Red")
lines(subdata$Sub_metering_3 ~ subdata$Date_Time, col = "Blue")

legend("topright", 
       lty = 1, 
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n", 
       cex = 0.6)

#bottom right plot
plot(subdata$Global_reactive_power ~ subdata$Date_Time, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Global_reactive_power")

dev.off()