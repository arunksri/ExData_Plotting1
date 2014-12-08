# If the raw data has not been saved, download, unzip, and load it.

if (!file.exists('Power_Data.rds')) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileUrl, destfile='Raw_Power_Data.zip')
        unzip('Raw_Power_Data.zip')
        
## Read data into a table with appropriate classes
        power.dat <- read.table('household_power_consumption.txt', header=TRUE,
                               sep=';', na.strings='?',
                               colClasses=c(rep('character', 2), 
                                            rep('numeric', 7)))
        
## Format and combine dates and times
        power.dat$date.time <- strptime(paste(power.dat$Date, power.dat$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

## Reduce data frame to what we need
        power.dat <- power.dat[power.dat$Date %in% c("1/2/2007", "2/2/2007"), ]        
        
## Save file
        saveRDS(power.dat, file='Power_Data.rds')
} else {
        power.dat <- readRDS('Power_Data.rds')
}