setwd("~/github/ExData_plotting1")

plot2 <- function(data=NULL) {
        if(is.null(data))
                data <- load_data()
        
        png("plot2.png", width=400, height=400)
        main="Global Active Power by Delermando"
        plot(data$Time, data$Global_active_power,
             type="l",
             xlab="",
             ylab="Global Active Power (kilowatts)",main = main)
        
        dev.off()
}
