# R Code in the file "8.6 exercise-time-series-for-a-single-variable_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf

#install.packages(c('iNZightTS'), dependencies = TRUE, repos = c('http://r.docker.stat.auckland.ac.nz/R', 'https://cran.rstudio.com'))
# Load the Time Series Library
library(iNZightTS)

#install.packages(c('iNZightPlots', 'FutureLearnData'), 
#                 dependencies = TRUE, 
#                 repos = c('https://r.docker.stat.auckland.ac.nz', 'https://cran.rstudio.com'))
library(FutureLearnData)
# List the course datasets and select dataset
data(package="FutureLearnData")

data(week8_AverageVisitorsQuarterly)
head(week8_AverageVisitorsQuarterly)

Australia = iNZightTS(week8_AverageVisitorsQuarterly, var="Australia")

# Plot the data -- t controls smoothing
plot( Australia , t=25, ylab="Average Visitors")

# Now experiment with different values of t

# If you are on Windows and using R alone (not RStudio) try ?
plot( Australia, t=25, animate=TRUE)

# Seasonal plot ? additive
seasonplot(Australia )

# Seasonal plot ? multiplicative
seasonplot(Australia, multiplicative=TRUE)

# Decomposition plot
decompositionplot(Australia, t=20)

# Recomposed plot
decomp=decompositionplot( Australia, t=20)
recompose(decomp, animate=FALSE)

# If you are on Windows and using R alone (not RStudio) try ?
recompose(decomp, animate=TRUE)

# Calculate a forecast
forecastplot( Australia )
forecastplot(Australia, multiplicative=TRUE)

# Let?s establish this pattern for another country
China = iNZightTS (week8_AverageVisitorsQuarterly, var= "China.PR")
plot( China, t=20, ylab="Visitor Arrivals")
decompositionplot( China, t=20, ylab="Average Visitors")