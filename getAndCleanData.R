setwd("D:/Engineering/Programming/R/Data Science Specialization/4. Exp. Data Analysis/Assignments/Assignment 1")

data.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## Download the zip file containing the data and extract it in the same working
## directory, if the .txt file already exist then skip downloadin the zip

#this checks if this R script was run before
#'target.ds' is the cleaned data frame

if (!exists("target.ds")) {
    
    if (!file.exists("household_power_consumption.txt")) {
        # create a temp file
        temp <- tempfile()
        
        #download the zip file containing the data
        download.file(data.url,temp)
        
        # unzip it and read the data
        ds <- read.table(unz(temp, "household_power_consumption.txt"), 
                         header = T, sep = ";", na.strings = "?")
        
    }
    
    else {
        
        # read data directly
        ds <- read.table("household_power_consumption.txt",header = T, sep = ";", na.strings = "?")
    }
    

    #clean the data (only subset on the two days needed)
    target.ds <- subset(ds, Date == "1/2/2007" | Date == "2/2/2007")
    # remove NAs
    target.ds <- target.ds[complete.cases(target.ds), ]
    target.ds$Date <- strptime(paste(target.ds$Date, target.ds$Time), "%d/%m/%Y %H:%M:%S")
}

