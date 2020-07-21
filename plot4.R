power<-read.table("C:\\Users\\valla\\Desktop\\Vallari\\DataScience\\household_power_consumption.txt",sep=";",skip=1)
columnNames<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
colnames(power)<-columnNames

wanted_data<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")

wanted_data$datetime<-paste(wanted_data$Date,wanted_data$Time)

png(filename="plot4.png")
par(mfrow=c(2,2))
plot(as.POSIXlt(datetime,format="%d/%m/%Y %H:%M:%OS"),wanted_data$Global_active_power,type="l",xlab = "",ylab="Global Active Power")

plot(as.POSIXlt(datetime,format="%d/%m/%Y %H:%M:%OS"),wanted_data$Voltage,type="l",xlab = "datetime",ylab="Voltage")

plot(as.POSIXlt(datetime,format="%d/%m/%Y %H:%M:%OS"),wanted_data$Sub_metering_1,type="l",xlab = "",ylab="Energy sub metering")
lines(as.POSIXlt(datetime,format="%d/%m/%Y %H:%M:%OS"),wanted_data$Sub_metering_2,type="l",col="red")
lines(as.POSIXlt(datetime,format="%d/%m/%Y %H:%M:%OS"),wanted_data$Sub_metering_3,type="l",col="blue")

legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")

plot(as.POSIXlt(datetime,format="%d/%m/%Y %H:%M:%OS"),wanted_data$Global_reactive_power,type="l",xlab = "datetime",ylab="Global_reactive_power")

dev.off()