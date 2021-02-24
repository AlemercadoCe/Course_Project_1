#code for plot1

#read file
epc <- read.csv("./household_power_consumption.txt", sep = ";")

#format date as date to subset

epc$Date <- as.Date(epc$Date, format = "%d/%m/%Y")

# subset 
days <- subset(epc, epc$Date >= "2007-02-01" &  epc$Date <="2007-02-02")

#format Globak active power as numeric
days$Global_active_power <- as.numeric(days$Global_active_power)

# plot and print in file

png(filename = "plot1.png", width = 480, height = 480)

hist(days$Global_active_power, col = "red", main = "Gobal Active Power", xlab =
       "Global Active Power (Kilowatts)")

dev.off()

