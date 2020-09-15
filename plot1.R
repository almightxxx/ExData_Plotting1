data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
datasub$Date <- as.Date(datasub$Date, format="%d/%m/%Y")
hist(datasub$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
