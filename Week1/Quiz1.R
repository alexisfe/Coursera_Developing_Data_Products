# Question 1
# This function plots distance versus speed, each de-meaned and an associated line of slope s. 
# Which of the following code will make a manipulate plot that creates a slider for the slope?

library(datasets)
library(manipulate)

data(cars)

myPlot <- function(s) {
  plot(cars$dist - mean(cars$dist), cars$speed - mean(cars$speed))
  abline(0, s)
}

manipulate(myPlot(s), s = slider(0, 2, step = 0.1))

# Question 2
# Which of the following code uses the rCharts package to create a sortable and searchable data table for the airquality data set? 
# Assume the rCharts package and the airquality data set have already been loaded into R

library(datasets)
library(devtools)
library(rCharts)

data(airquality)

dTable(airquality, sPaginationType = "full_numbers")

