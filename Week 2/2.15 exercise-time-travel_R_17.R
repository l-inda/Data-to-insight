# R CODE from the file "2.15 exercise-time-travel_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf

# Setup
library(iNZightPlots)
library(FutureLearnData)

data(gapminder)
names(gapminder)

iNZightPlot(ChildrenPerWoman, Region, data=gapminder)

# Plot ChildrenPerWoman by Region  subset by Year_cat 
iNZightPlot(ChildrenPerWoman, Region, g1=Year_cat, data=gapminder)

levels(gapminder$Year_cat)

# Display just the plot for the year 2000
iNZightPlot(ChildrenPerWoman, Region, g1=Year_cat, g1.level="[2000]", data=gapminder)

# Do it again for 2004 
iNZightPlot(ChildrenPerWoman, Region, g1=Year_cat, g1.level="[2004]", data=gapminder)

# Now put it in a loop and do it for every year, i.e. for every level of Year_cat
for (k in levels(gapminder$Year_cat))  iNZightPlot(ChildrenPerWoman,Region, g1=Year_cat, g1.level=k, data=gapminder)

# Do not display a new plot UNTIL you have clicked on the on plot window
old.value = devAskNewPage(TRUE)      # save current plotting behaviour and ask for new behaviour
for (k in levels(gapminder$Year_cat)) 
        iNZightPlot(ChildrenPerWoman,Region, g1=Year_cat, g1.level=k, data=gapminder)

devAskNewPage(old.value)     #  Reset the plotting behaviour back to the way it was before

# Play the plots, but with a 2 second delay between plots
for (k in levels(gapminder$Year_cat)) {
        iNZightPlot(ChildrenPerWoman,Region, g1=Year_cat, g1.level=k, data=gapminder)
        Sys.sleep(2)
}
 
