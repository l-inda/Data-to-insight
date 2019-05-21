# R Code in the file "8.10 exercise-time-series-analysis-for-more-than-one-series_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf

#  Set up
library(iNZightTS)
library(FutureLearnData)

data(week8_AverageVisitorsQuarterly)

# See the variables in this dataset
head(week8_AverageVisitorsQuarterly)

# See how these work ?
c(2,5,9)
c(2,4:6, 8)

Aus_USA = iNZightTS(week8_AverageVisitorsQuarterly, var=c(2,9))
# Alternative, use the names of the columns ?
Aus_USA = iNZightTS(week8_AverageVisitorsQuarterly, var=c("Australia","USA"))

plot(Aus_USA, t=20)

# Separate plots for Aus_USA
plot(Aus_USA, t=20, compare=FALSE)

ALL = iNZightTS(week8_AverageVisitorsQuarterly, var=c(2:9))
plot(ALL, t=30)

# Separate plots for ALL
plot(ALL, t=20, compare=FALSE)

# Note: too many series at once for this display

