#RCODE 
library(iNZightPlots)
library(FutureLearnData) 
data(package="FutureLearnData") 
data(nhanes_1000) 
nhanes_1000[1:10, 1:8] 
head(nhanes_1000) 
tail(nhanes_1000) 
names(nhanes_1000) 
iNZightPlot(Race3, data=nhanes_1000) 
iNZightPlot(Height, data=nhanes_1000) 
getPlotSummary(Height, data=nhanes_1000) 