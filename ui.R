library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Horsepower from MPG with a new data point"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric1", "Enter the new value for mpg",
                         value = 20.9, min = 10, max = 34, step = 0.01),
            numericInput("numeric2", "Enter the new value for hp",
                         value = 146.5, min = 50, max = 340, step = 0.1),
            submitButton("Submit"),
        ),
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Documentation", br(), h3("A brief description"), "This app plots MPG and horsepower of cars from the original mtcars data.
                                 In addition to the original data, initially the average of the two factors (mpg and hp) are
                                 also added to the plot.",

                                 br("The red line shows linear regression line."),

                                 h3("How to use"), "One can add a new datapoint to the original mtcars by choosing or typing numbers
                                 from the fields on the left. The possible range for mpg is between 10 and 35.
                                 The possible range for hp is from 50 to 350.
                                 After pressing the subbmit button, the new datapoint appears in the plot
                                 in red and one can see how the regression line changes.", br(""),

                                 br(strong("To test the app, please go to the Main tab."))),
                        tabPanel("Main", br(), plotOutput("plot1"))
                        )
        )
    )
))
