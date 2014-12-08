##Plot_3
source('Load_Power_Data.R')

##Create Plot

plot(power.dat$date.time, power.dat$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering") 
lines(power.dat$date.time, power.dat$Sub_metering_2, col = "red")
lines(power.dat$date.time, power.dat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue")
       , lty = "solid")

##Save PNG file

png(filename='plots/plot3.png')
