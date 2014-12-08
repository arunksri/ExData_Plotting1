##Plot_1
source('Load_Power_Data.R')

##Create Plot

hist(power.dat$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

##Save PNG file

png(filename='plots/plot1.png')
