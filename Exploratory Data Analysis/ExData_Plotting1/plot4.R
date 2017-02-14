setwd("~/github/ExData_plotting1")

plot4 <- function(data=NULL) {
        if(is.null(data))
                data <- load_data()
        
        png("plot4.png", width=400, height=400)
        
        par(mfrow=c(2,2))
        # 1
        plot(data$Time, data$Global_active_power,
             type="l",
             xlab="",
             ylab="Global Active Power")
        # 2
        plot(data$Time, data$Voltage, type="l",
             xlab="datetime", ylab="Voltage")
        # 3
        plot(data$Time, data$Sub_metering_1, type="l", col="black",
             xlab="", ylab="Energy sub metering")
        lines(data$Time, data$Sub_metering_2, col="red")
        lines(data$Time, data$Sub_metering_3, col="blue")
        legend("topright",
               col=c("black", "red", "blue"),
               c("SubM_1", "SubM_2", "SubM_3"),
               lty=1,
               box.lwd=0)
        # 4
        plot(data$Time, data$Global_reactive_power, type="n",
             xlab="datetime", ylab="Global_reactive_power")
        lines(data$Time, data$Global_reactive_power)
        
        dev.off()
        
}
