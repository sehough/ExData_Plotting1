#check for file in current directory.
if (!"load_data.R" %in% list.files()) {
  setwd("~/Desktop/Exploratory Data Analysis")
} 

source("load_data.R")
png(file = "plot3.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

dev.off()
