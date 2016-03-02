library(shiny)
library(plotly)

shinyUI(fluidPage(
  titlePanel('Iris Analysis'),
  sidebarLayout(
        # Side panel for controls
    sidebarPanel(
        
        # Copy the line below to make a set of radio buttons
        radioButtons("sepal", label = h4("Sepal Selection"),
                     choices = list("Sepal Length" = "Sepal.Length", "Sepal Width" = "Sepal.Width"), 
                     selected = "Sepal.Length"),
        
        radioButtons("petal", label = h4("Petal Selection"),
                     choices = list("Petal Length" = "Petal.Length", "Petal Width" = "Petal.Width"), 
                     selected = "Petal.Length"),
        
        # Copy the line below to make a select box 
        selectInput("class", label = h4("Iris Class"), 
                    choices = list("Setosa" = "setosa", "Versicolor" = "versicolor", "Virginica" = "virginica"), 
                    selected = "setosa")
  ),
    
    mainPanel(
      plotlyOutput('scatter')
    )
) 
))