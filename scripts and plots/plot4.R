##Plot_4
source('Load_Power_Data.R')

##Open the PNG graphics file device

png(filename='plots/plot4.png')

##Create Plot

par(mfrow = c(2,2))

plot(power.dat$date.time, power.dat$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(power.dat$date.time, power.dat$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(power.dat$date.time, power.dat$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering") 
lines(power.dat$date.time, power.dat$Sub_metering_2, col = "red")
lines(power.dat$date.time, power.dat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue")
       , lty = "solid", bty = "n")

plot(power.dat$date.time, power.dat$Global_reactive_power, type = "l", xlab = "datetime"
     , ylab = "Global_reactive_power")

##Close the PNG graphics file device

dev.off()
