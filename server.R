library(shiny)
library(ggplot2)

function(input, output) {
  
  breaks <- 20
    
  output$expDistplot <- renderPlot({
    # Let's get an exponential distribution
    exp_dist <- rexp(input$expDistSize, input$expDistRate)
    
    hist(exp_dist, col='lightblue',main='Exponential Distribution', breaks = breaks,
         xlab = NULL)
  })

  output$avgDistplot <- renderPlot({
    # Let's get the distribution of averages of exponentials
    averages = NULL
    for (i in 1 : input$avgNumber) averages = c(averages, mean(rexp(input$avgSampleSize,input$expDistRate)))  

    hist(averages, col='lightblue',main='Averages of Exponentials distribution', breaks = breaks,
         xlab = NULL)
    abline(v = mean(averages), col = "blue", lwd = 2)
  })
  
}
