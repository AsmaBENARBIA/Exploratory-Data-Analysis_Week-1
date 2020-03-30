Data_Subset <- subset(household_power_consumption,V1 == "01/02/2007" | V1 == "02/02/2007")
globalActivePower <- as.numeric(Data_Subset$V3)
datetime <- strptime(paste(Data_Subset$V1, Data_Subset$V2, sep=" "), "%d/%m/%Y %H:%M:%S") 
subMetering1 <- as.numeric(Data_Subset$V7)
subMetering2 <- as.numeric(Data_Subset$V8)
subMetering3 <- as.numeric(Data_Subset$V9)
voltage <- Data_Subset$V5
globalReactivePower <- Data_Subset$V4
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()