
houseHoldPowerData <-   "household_power_consumption.txt"
houseHoldPowerData <- read.table(file=houseHoldPowerData, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
dataForPlot <- houseHoldPowerData[houseHoldPowerData$Date %in% c("1/2/2007","2/2/2007"),]

activePower <- as.numeric(dataForPlot$Global_active_power)
png("plot1.png",width=480,height=480)
hist(activePower,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
