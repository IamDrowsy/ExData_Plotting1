source("util.R")
library("graphics")

##To create the png for only this plot, run generate_plot_2(png = TRUE)
##To generate all plots, look at the generate_all.R

#Generates the second plot.
#Will use data if given, otherwise load it.
#If png = TRUE the plot is written to a png file otherwise it's rendered to the default device
generate_plot_2 <- generate_plot_function("2", draw_plot_2)

draw_plot_2 <- function(data) {
        plot(data$DateTime,data$Global_active_power,type="n",
             xlab = "", ylab = "Global Active Power (kilowatts)")
        lines(data$DateTime,data$Global_active_power)
}