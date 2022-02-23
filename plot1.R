setwd ("C:/Users/Shreya Mendi/Desktop/College/DataScience/datascience/exdata_data_household_power_consumption")
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


