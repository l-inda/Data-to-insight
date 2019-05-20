# R CODE from the file "2.13 exercise-comparing-groups_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf

# Setup
library(iNZightPlots)
library(FutureLearnData)

data(gapminder_2008)
names(gapminder_2008)

iNZightPlot(ChildrenPerWoman, data=gapminder_2008)

# Now break out by Region
iNZightPlot(ChildrenPerWoman, Region, data=gapminder_2008)

# Get Summary of ChildrenPerWoman broken out by Region 
getPlotSummary(ChildrenPerWoman, Region, data=gapminder_2008)
	
# Colour by Region 
iNZightPlot(ChildrenPerWoman, Region, data=gapminder_2008, colby=Region)

# Try also 
iNZightPlot(ChildrenPerWoman, Region, data=gapminder_2008, colby=Region, cex.text=.3)
iNZightPlot(ChildrenPerWoman, Region, data=gapminder_2008, colby=Region, hide.legend = TRUE)

# Colour by Infantmortality 
iNZightPlot(ChildrenPerWoman, Region, data=gapminder_2008, colby=Infantmortality)

