houseHoldPowerData <-   "household_power_consumption.txt"
houseHoldPowerData <- read.table(file=houseHoldPowerData, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
dataForPlot <- houseHoldPowerData[houseHoldPowerData$Date %in% c("1/2/2007","2/2/2007"),]



datetime <- strptime(paste(dataForPlot$Date, dataForPlot$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataForPlot$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
