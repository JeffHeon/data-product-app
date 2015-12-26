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
    plotOutput('avgDistplot'),
    h4('Documentation'),
    p('The Central Limit Theorem tells us the distribution of sampling of a distribution is normal, even though the original distribution might not be.'),
    p('The top plot is an histogram of an exponential distribution, which does not follow a normal distribution. Parameters on the left side lets user specify the sample size of this exponential distribution as well as its rate.'),
    p('For the bottom plot, many different exponential distributions and generated. A distribution of the average of each exponential distribution is calculated. Paremeters on the left let us specify how many different exponential distribution are generated as well as the size of each distribution. Finally the mean of the averages is calculated and is displayed by a vertical line.'),
    p('Playing around with the parameters shows us how how well or bad the theorem holds for small or big samples.')
  )
)
