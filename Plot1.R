Data_Subset <- subset(household_power_consumption,V1 == "01/02/2007" | V1 == "02/02/2007")
globalActivePower <- as.numeric(Data_Subset$V3)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
