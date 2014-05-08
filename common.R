
# the function downloads the zip file, unzips it in locally created data folder,
# loads and filters the data
# if the file already exists, then the functions skips the first steps and only
# loads and filters the data
load_and_filter <- function() {
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  zip_file <- "./data/household_power_consumption.zip"
  txt_file <- "./data/household_power_consumption.txt"
  data_folder <- "./data"
  if (!file.exists(data_folder)) {
    dir.create(data_folder)
  }
  if (!file.exists(zip_file)) {
    download.file(url, destfile=zip_file, method="curl") # curl needs to be available on your system
  }
  if (!file.exists(txt_file)) {
    unzip(zip_file, exdir=data_folder)
  }
  filtered_data <- read.csv(pipe('egrep \'^Date|^[1-2]/2/2007\' ./data/household_power_consumption.txt'), header=T, sep=';', na.strings=c("?")) # egrep works only on Unix systems
  filtered_data$Date_Time <- strptime(paste(filtered_data$Date, filtered_data$Time), "%d/%m/%Y %H:%M:%S") 
  return(filtered_data)
}
