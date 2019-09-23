library(shiny)
library(plotly)
data("mtcars")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {


    
    # renderPlotly() also understands ggplot2 objects!
  output$plot <- renderPlotly({
    #plot_ly(mtcars, x = ~mpg, y = ~mtcars[,input$Choices], type = 'scatter', mode = 'markers')
    ggplot(mtcars, aes_string(x = mtcars$mpg, y = input$Choices)) + 
          labs(title = 'See how each variable effects Miles Per Gallon', 
               y = 'Miles Per Gallon', 
               x = input$Choices) +
          geom_point()
  })

})


