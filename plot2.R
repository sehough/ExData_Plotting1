#check for file in current directory.
if (!"load_data.R" %in% list.files()) {
  setwd("~/Desktop/Exploratory Data Analysis")
} 

source("load_data.R")
png(file = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()
