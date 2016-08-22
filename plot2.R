# Plot 2
# convert data and time to specific format
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
# open device
if(!file.exists('png')) dir.create('png')
png(filename = './png/plot2.png', width = 480, height = 480, units='px')
# plot figure

plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()