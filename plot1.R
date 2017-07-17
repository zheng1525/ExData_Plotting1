#Read data
data <- read.table("household_power_consumption.txt", 
                   header = T, 
                   sep = ";",
                   na.strings = "?")

#Convert data to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

#Subset data from 2007-002-01 and 2007-02-02
subdata <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

#Convert Date/Time
subdata$Date_Time <- strptime(paste(subdata$Date, subdata$Time), "%Y-%m-%d %H:%M:%S")

#Plot 1
png("plot1.png", height = 480, width = 480)

hist(subdata$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     col = "Red")

dev.off()
