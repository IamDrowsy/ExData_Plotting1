source("util.R")
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

#Generates all four plots by calling this function.
#png = TRUE renders them out as png, otherwise they are drawn to the default device
generate_all_plots <- function(png = TRUE) {
        #Set locale to english so date labels are correct
        Sys.setlocale(category = "LC_ALL", locale = "english")
        data <- get_data()
        generate_plot_1(data,png)
        generate_plot_2(data,png)
        generate_plot_3(data,png)
        generate_plot_4(data,png)
}