source("util.R")
library("graphics")

##To create the png for only this plot, run generate_plot_3(png = TRUE)
##To generate all plots, look at the generate_all.R

#Generates the third plot.
#Will use data if given, otherwise load it.
#If png = TRUE the plot is written to a png file otherwise it's rendered to the default device
generate_plot_3 <- generate_plot_function("3", draw_plot_3)

draw_plot_3 <- function(data) {
        plot(data$DateTime,data$Sub_metering_1,type="n",
             xlab = "", ylab = "Energy sub metering")
        lines(data$DateTime,data$Sub_metering_1)
        lines(data$DateTime,data$Sub_metering_2,col="red")
        lines(data$DateTime,data$Sub_metering_3,col="blue")
        legend("topright",
               legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
               col=c("black","red","blue"),
               lty=rep(1,3))
}