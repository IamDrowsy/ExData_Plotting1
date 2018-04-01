source("util.R")
library("graphics")
source("plot2.R")
source("plot3.R")

##To create the png for only this plot, run generate_plot_4(png = TRUE)
##To generate all plots, look at the generate_all.R

#Generates the fourth plot.
#Will use data if given, otherwise load it.
#If png = TRUE the plot is written to a png file otherwise it's rendered to the default device
generate_plot_4 <- generate_plot_function("4", draw_plot_4)

draw_plot_4 <- function(data) {
        par(mfcol=c(2,2),mar=c(4,4,1,2))
        draw_plot_2(data)
        draw_plot_3(data)
        draw_plot_4_3(data)
        draw_plot_4_4(data)
}

draw_plot_4_3 <- function(data) {
        plot(data$DateTime,data$Voltage,ylab="Voltage",xlab="datetime",type="n")
        lines(data$DateTime,data$Voltage)
}

draw_plot_4_4 <- function(data) {
        plot(data$DateTime,data$Global_reactive_power,ylab="Global_reactive_power",xlab="datetime",type="n")
        lines(data$DateTime,data$Global_reactive_power)
}