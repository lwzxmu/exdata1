#load data and subset data
setwd("E:/RDir/exdata_data_household_power_consumption");
data <- read.table(dir()[[1]],sep=";",header=TRUE,na.strings="?",stringsAsFactors =FALSE);
data_eff <- data[{data$Date == "1/2/2007" | data$Date == "2/2/2007"},];

dt <- strptime(paste(data_eff$Date,data_eff$Time,sep=" "), "%d/%m/%Y %H:%M:%S");
#call the plot device
png("plot3.png");
plot(dt , data_eff$Sub_metering_1,col="grey" ,type="l", xlab=" ",ylab="Global Active Power (kilowatts)");
lines(dt , data_eff$Sub_metering_2,col="red" ,type="l");
lines(dt , data_eff$Sub_metering_3,col="blue" ,type="l");
legend("topright",lty="solid",col=c("grey","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#paste plot to png
dev.off()


