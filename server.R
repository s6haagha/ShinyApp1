
library(shiny)
shinyServer(function(input, output) {
    mtcars <- mtcars[,c(1,3,4)]

    output$plot1 <- renderPlot({
        mtcars <- rbind(mtcars, data.frame(mpg = input$numeric1, hp = input$numeric2, disp = 230.7))
        plot(mtcars$mpg, mtcars$hp, xlab = "Miles Per Gallon",
             ylab = "Horsepower", bty = "n", pch = 16, color = mtcars$cyl,
             xlim = c(10, 35), ylim = c(50, 350))
        abline(lm(hp ~ mpg, data = mtcars), col = "red", lwd = 2)
        points(input$numeric1, input$numeric2, col = "red", pch = 20, cex = 2)
    })

})
