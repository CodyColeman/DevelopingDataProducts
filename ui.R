library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Motor Trends Magazine 1974 Data"),
    

    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "Choices",
                        label = "Choose a Variable.",
                        c("Cylinders" = "cyl",
                          "Displacement" = "disp",
                          "Horse Power" = "hp",
                          "Rear Axel Ratio" = "drat",
                          "Weight" = "wt",
                          "Quarter Mile Time" = "qsec",
                          "Engine Shape" = "vs",
                          "Transmission" = "am",
                          "Gears" = "gear",
                          "Carburetors" = "carb"))),
        mainPanel(plotlyOutput("plot"))
    ),
    
    tabPanel("Information", 
             h4('The Motor Trend Car Road Tests were extracted from the 1974 Motor Trend US magazine.'), 
             h4('This data is comprised of 11 variables, including Miles Per Gallon, observed on 32 vehicles.'),
             h4('You can use the drop down menu to select any of the other 10 variables to see how it effects MPG.'))
))
