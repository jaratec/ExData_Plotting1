# load data
source("common.R")
hpc <- load_and_filter()

# make and save plot
png("plot1.png", width=480, height=480)
hist(hpc$Global_active_power, col="red", main="Gloabl Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

