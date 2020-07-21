power<-read.table("C:\\Users\\valla\\Desktop\\Vallari\\DataScience\\household_power_consumption.txt",sep=";",skip=1)
columnNames<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
colnames(power)<-columnNames

wanted_data<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")

png(filename="plot1.png")
hist(as.numeric(wanted_data$Global_active_power),main="Global Active Power",xlab="Global Active Power (kilowatts",col="red")
dev.off()
