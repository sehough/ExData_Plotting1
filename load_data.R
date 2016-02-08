###Load_data###
##set working directory
file <- "./household_power_consumption.txt"
Data <- read.table(file,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(Data) # 2075259 9
attach(Data)
##need data for two days
subset <- Date == "1/2/2007" | Date == "2/2/2007"
Data_New <- Data[subset, ]
attach(Data_New)
x <- paste(Date, Time)
Data_New$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(Data_New) <- 1:nrow(Data_New)
dim(Data_New) # 2880   10
attach(Data_New)

