##Plot_2
source('Load_Power_Data.R')

##Create Plot

plot(power.dat$date.time, power.dat$Global_active_power, type = "l", xlab = ""
     , ylab = "Global Active Power (kilowatts)")

##Save PNG file

png(filename='plots/plot2.png')
