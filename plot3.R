#Plot 3
png("plot3.png", height = 480, width = 480)

plot(subdata$Sub_metering_1 ~ subdata$Date_Time, 
     type = "l",
     ylab = "Energy sub metering", 
     xlab = "")
lines(subdata$Sub_metering_2 ~ subdata$Date_Time, col = "Red")
lines(subdata$Sub_metering_3 ~ subdata$Date_Time, col = "Blue")
legend("topright", 
       lty = 1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       )

dev.off()