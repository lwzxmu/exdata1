#load data and subset data
setwd("E:/RDir/exdata_data_household_power_consumption");
data <- read.table(dir()[[1]],sep=";",header=TRUE,na.strings="?",stringsAsFactors =FALSE);
data_eff <- data[{data$Date == "1/2/2007" | data$Date == "2/2/2007"},]
#call the plot device
png("plot1.png");
hist(data_eff$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)", ylab = "Frequency");
dev.off();