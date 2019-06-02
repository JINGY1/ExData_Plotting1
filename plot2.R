# plot2
# load the data
data <- read.table("./household_power_consumption.txt", header=T, sep=";", stringsAsFactors=FALSE, dec=".")
# subset data
datasubset <- subset(data,Date %in% c("1/2/2007","2/2/2007"))
# checking
head(datasubset)
# plotting
dt <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
par(mfrow=c(1,1),mar=c(5,4,2,1))
plot(dt,as.numeric(datasubset$Global_active_power)
	,type="l"
	,xlab=""
	,ylab="Global Active Power (kilowatts)")
dev.off()
