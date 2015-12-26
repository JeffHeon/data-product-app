library(shiny)

# Exponential distribution
minExpDist <- 10
maxExpDist <- 1000
stepExpDist <- 10

minExpRate <- 0.1
maxExpRate <- 1.0
stepExpRate <- .05

# Averages of many exponential distribution
# Number of exponential samples to take
minAvgNumber <- 10
maxAvgNumber <- 1000
stepAvgNumber <- 10

# Size of exponential for each sample
minAvgSampleSize <- 5
maxAvgSampleSize <- 50
stepAvgSampleSize <- 5


fluidPage(
  
  titlePanel("Central Limit Theorem"),
  
  sidebarPanel(
    
    h3('Exponential Distribution Parameters'),
    sliderInput('expDistSize', 'Distribution Size', min=minExpDist, max=maxExpDist,
                value=minExpDist, step=stepExpDist, round=0),
    sliderInput('expDistRate', 'Rate', min=minExpRate, max=maxExpRate,
                value=minExpRate, step=stepExpRate, round=0),
    h3('Averages of Exponentials Distribution Parameters'),
    sliderInput('avgNumber', 'Number of exponential to sample', min=minAvgNumber, max=maxAvgNumber,
                value=minAvgNumber, step=stepAvgNumber, round=0),
    sliderInput('avgSampleSize', 'Size of exponential for each sample', min=minAvgSampleSize, max=maxAvgSampleSize,
                value=minAvgSampleSize, step=stepAvgSampleSize, round=0)
  ),
  
  mainPanel(
    plotOutput('expDistplot'),
    plotOutput('avgDistplot')
  )
)
