#load data and subset data
setwd("E:/RDir/exdata_data_household_power_consumption");
data <- read.table(dir()[[1]],sep=";",header=TRUE,na.strings="?",stringsAsFactors =FALSE);
data_eff <- data[{data$Date == "1/2/2007" | data$Date == "2/2/2007"},];

dt <- strptime(paste(data_eff$Date,data_eff$Time,sep=" "), "%d/%m/%Y %H:%M:%S");
#call the plot device
png("plot3.png");
#set four spaces for plotting
par(mfrow=c(2,2))

#The 1st plot
plot(dt, data_eff$Global_active_power, col="black", type = "l", xlab=" ",ylab="Global Active Power");
#The 2nd plot
plot(dt,data_eff$Voltage,col="black",type="l",xlab="datetime",ylab="voltage")
#The 3rd plot
plot(dt , data_eff$Sub_metering_1,col="grey" ,type="l", xlab=" ",ylab="Energy sub merging");
lines(dt , data_eff$Sub_metering_2,col="red" ,type="l");
lines(dt , data_eff$Sub_metering_3,col="blue" ,type="l");
legend("topright",lty="solid",col=c("grey","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#The 4th plot
plot(dt,data_eff$Global_reactive_power,type="l",col="black",xlab="datetime",ylab="Global_reactive_power");

#paste plot to png
dev.off()


