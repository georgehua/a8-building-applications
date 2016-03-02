library(plotly)
library(shiny)
library(dplyr)

# read build in dataset
data(iris)

source("build_scatter.R")

shinyServer(function(input, output) {

  output$scatter <- renderPlotly({
    build_scatter(iris, input$sepal, input$petal, input$class) 
  })
})
