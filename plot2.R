dataFile <- "../household_power_consumption.txt"
full <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE)
sub <- full[full$Date %in% c("1/2/2007","2/2/2007"), ]

datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sub$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()