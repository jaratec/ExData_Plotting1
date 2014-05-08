# load data
source("common.R")
hpc <- load_and_filter()

# make and save plots
png("plot4.png", width=480, height=480)
par(mfcol=(c(2,2)))

plot(hpc$Date_Time, hpc$Global_active_power, ylab="Global Active Power", xlab="", type="l")

plot(hpc$Date_Time, hpc$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(hpc$Date_Time, hpc$Sub_metering_2, col="red")
lines(hpc$Date_Time, hpc$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, bty="n")

plot(hpc$Date_Time, hpc$Voltage, ylab="Voltage", xlab="datetime", type="l")

plot(hpc$Date_Time, hpc$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")
dev.off()

