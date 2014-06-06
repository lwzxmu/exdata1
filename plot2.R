#load data and subset data
setwd("E:/RDir/exdata_data_household_power_consumption");
data <- read.table(dir()[[1]],sep=";",header=TRUE,na.strings="?",stringsAsFactors =FALSE);
data_eff <- data[{data$Date == "1/2/2007" | data$Date == "2/2/2007"},];

dt <- strptime(paste(data_eff$Date,data_eff$Time,sep=" "), "%d/%m/%Y %H:%M:%S");
#call the plot device
png("plot2.png");
plot(dt , data_eff$Global_active_power, type="l", ylab="Global Active Power (kilowatts)");
#paste plot to png
dev.off()