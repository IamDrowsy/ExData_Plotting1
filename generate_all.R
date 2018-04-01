source("util.R")
source("plot1.R")
source("plot2.R")

#Generates all four plots by calling generate_all_plots
generate_all_plots <- function(png = TRUE) {
        #Set locale to english so date labels are correct
        Sys.setlocale(category = "LC_ALL", locale = "english")
        data <- get_data()
        generate_plot_1(data,png)
        generate_plot_2(data,png)
}