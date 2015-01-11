##Plot_1
source('Load_Power_Data.R')

##Open the PNG graphics file device

png(filename='plots/plot1.png')

##Create Plot

hist(power.dat$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

##Close the PNG graphics file device

dev.off()
