source("util.R")
library("graphics")

##To create the png for only this plot, run generate_plot_1(png = TRUE)
##To generate all plots, look at the generate_all.R

#Generates the first plot.
#Will use data if given, otherwise load it.
#If png = TRUE the plot is written to a png file otherwise it's rendered to the default device
generate_plot_1 <- generate_plot_function("1", draw_plot_1)

draw_plot_1 <- function(data) {
        hist(data$Global_active_power, main="Global Active Power",
             xlab = "Global Active Power (kilowatts)",
             col = "red")
}
