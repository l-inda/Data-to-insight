# R CODE from the file "4.11 exercise-advanced-scatterplots-with-deeper-analysis_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf

# Setup
library(iNZightPlots)
library(FutureLearnData)
data(gapminder)

# Scatterplot of Infantmortaility against ChildrenPerWoman
iNZightPlot(ChildrenPerWoman,Infantmortality , data=gapminder)

#  Subset by Year_cat
iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, data=gapminder)

# Change size and colour of points
iNZightPlot(ChildrenPerWoman,Infantmortality,g1=Year_cat, data=gapminder, colby=Region, sizeby=Populationtotal)

#  Show results for 1972 only 
iNZightPlot(ChildrenPerWoman,Infantmortality,g1=Year_cat, g1.level="[1972]",data=gapminder, colby=Region, sizeby=Populationtotal)

# Darker background (often easier to see some of the lighter dots)
iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level="[1972]",data=gapminder, colby=Region, sizeby=Populationtotal, bg="darkgray")

# Try transparency and smaller points (removed garkgray)
iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level="[1972]",data=gapminder, colby=Region, sizeby=Populationtotal, alpha=.45, cex.dotpt=.5)

# Try subsetting by different years, e.g. g1.level="[1976]",
#  Label some of the extreme points (ask for 4)
iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level="[2012]",data=gapminder, colby=Region, sizeby=Populationtotal, alpha=.45, cex.dotpt=.5, locate.extreme=4, locate=Country)

#  Label some specific countries
ids = (1:nrow(gapminder))[gapminder$Country %in% 
                     c("United States of America","China","Brazil", "India")] 
iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level="[1972]",data=gapminder, colby=Region, sizeby=Populationtotal, alpha=.45, cex.dotpt=.5, locate.id=ids, locate=Country)

iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level="[2012]",data=gapminder, colby=Region, sizeby=Populationtotal, alpha=.45, cex.dotpt=.5, locate.id=ids, locate=Country)

# Allow a little more room on left to accommodate label
iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level="[1972]",data=gapminder, colby=Region, sizeby=Populationtotal, alpha=.45, cex.dotpt=.5, locate.id=ids, locate=Country, xlim=c(0,9))

# Subset by a fourth variable (Region)
iNZightPlot(ChildrenPerWoman, Infantmortality, g1=Year_cat, g2=Region, g2.level="America", data=gapminder, colby=Region)

#  Play through the years

for (k in levels(gapminder$Year_cat)) {
iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level=k, data=gapminder, colby=Region, sizeby=Populationtotal, alpha=.45, cex.dotpt=.5, locate.id=ids, locate=Country)
          Sys.sleep(1)
}


# Testing... for the BRICS

#  Label some specific countries
ids = (1:nrow(gapminder))[gapminder$Country %in% 
                              c("Brazil","Russia","India","China","South Africa")]

for (k in levels(gapminder$Year_cat)) {
    iNZightPlot(ChildrenPerWoman,Infantmortality, g1=Year_cat, g1.level=k, data=gapminder, colby=Region, sizeby=Populationtotal, alpha=.45, cex.dotpt=.5, locate.id=ids, locate=Country)
    Sys.sleep(1)
}


