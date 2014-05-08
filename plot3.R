# load data
source("common.R")
hpc <- load_and_filter()

# make and save plot
png("plot3.png", width=480, height=480)
plot(hpc$Date_Time, hpc$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(hpc$Date_Time, hpc$Sub_metering_2, col="red")
lines(hpc$Date_Time, hpc$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1)
dev.off()

