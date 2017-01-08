getwd ()
setwd ("C:/Users/LG/Desktop/Coursera 강의정리/Exploratory data analysis/Week 1")

#Reading, naming and subsetting power consumption data
powerConsumption <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(powerConsumption) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subsetPowerConsumption <- subset(powerConsumption,powerConsumption$Date=="1/2/2007" | powerConsumption$Date =="2/2/2007")

#calling the basic plot function
hist(as.numeric(as.character(subsetPowerConsumption$Global_active_power)),col="red",xlab="Global Active Power(kilowatts)")

# annotating graph
title(main="Global Active Power")

dev.copy (png, file = "Plot1")
dev.off()