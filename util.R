library(lubridate)
# Function to get the needed data
get_data <- function() {
        sanatize_and_filter_date_time(read_data())
}

# Function to read and filter the data for our needs
read_data <- function() {
        filename <- file.path("data", "household_power_consumption.txt")
        read.csv(file = filename, sep = ";", na.strings = "?")
}

#Creates a new DateTime variable and removes the Date/Time variables
#Subets the rows to only include the needed range 
sanatize_and_filter_date_time <- function(data) {
        data$DateTime = strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %T")
        data$Date <- NULL
        data$Time <- NULL
        data[is_needed_datetime(data$DateTime),]
}

#Predicate if a datetime is in the needed interval
is_needed_datetime <- function(date_time) {
        year(date_time) == "2007" &
        month(date_time) == "2"  &
        day(date_time) %in% c("1","2")        
}

# Higher order function, returning a "generate_plot" function
# for a specific plot and it's draw function
generate_plot_function <- function(plotname, draw_fn) {
        function(data = NULL, png = FALSE) {
                if (is.null(data)) {
                        print("no data given, reading it.")
                        data <- get_data()
                }
                if (png) {
                        filename = paste("plot", plotname, ".png", sep="")
                        png(filename = filename, width = 480, height = 480) 
                }
                
                draw_fn(data)
                if (png) {
                        dev.off()
                }
        }
}