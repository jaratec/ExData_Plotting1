# load data
source("common.R")
hpc <- load_and_filter()

# make and save plot
png("plot2.png", width=480, height=480)
plot(hpc$Date_Time, hpc$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()

