##Plot_2
source('Load_Power_Data.R')

##Open the PNG graphics file device

png(filename='plots/plot2.png')

##Create Plot

plot(power.dat$date.time, power.dat$Global_active_power, type = "l", xlab = ""
     , ylab = "Global Active Power (kilowatts)")

##Close the PNG graphics file device

dev.off()
