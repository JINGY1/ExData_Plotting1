# plot3
# load the data
data <- read.table("./household_power_consumption.txt", header=T, sep=";", stringsAsFactors=FALSE, dec=".")
# subset data
datasubset <- subset(data,Date %in% c("1/2/2007","2/2/2007"))
# checking
head(datasubset)
# plotting
dt <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=480, height=480)
par(mfrow=c(1,1),mar=c(5,4,2,1))
plot(dt,as.numeric(datasubset$Sub_metering_1)
	,type="l"
	,col="black"
	,xlab=""
	,ylab="Energy sub metering")
lines(dt,as.numeric(datasubset$Sub_metering_2)
	,type="l"
	,col="red")
lines(dt,as.numeric(datasubset$Sub_metering_3)
	,type="l"
	,col="blue")
legend("topright"
	,lty=1
	,col=c("black","red","blue")
	,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

