# R CODE from the file "2.10 exercise-numeric-variables_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf
# Note that everything on a line after a "#" character is a Comment for readers and is ignored by R

# R code
# Setup
library(iNZightPlots)
library(FutureLearnData)

# Plot a numeric variable (Pulse) 
iNZightPlot(Pulse, data=nhanes_1000)

# Changing the size of the dots
iNZightPlot(Pulse, data=nhanes_1000, cex.dotpt=.4)
iNZightPlot(Pulse, data=nhanes_1000, cex.dotpt=2)

# Get a Summary for Pulse
getPlotSummary(Pulse, data=nhanes_1000)

# Equivalent of Get Inference for Pulse
getPlotSummary(Pulse, data=nhanes_1000, summary.type="inference", inference.type="conf")


iNZightPlot(Height, data=nhanes_1000)

# Colour points by Age
iNZightPlot(Height, data=nhanes_1000, colby=Age)

# Change colour palette to rainbow
iNZightPlot(Height, data=nhanes_1000, colby=Age, col.fun=rainbow)


iNZightPlot(Height, data=nhanes_1000)

#  Change Plot type to histogram 
iNZightPlot(Height, data=nhanes_1000, plottype= "hist")

#  Control the number of bins (class intervals) 
iNZightPlot(Height, data=nhanes_1000, plottype= "hist", hist.bins=10)
#-------------------------------------------------------------------------

iNZightPlot(Education, data=nhanes_1000)
# Weíll do this again putting the levels of Education into a sensible order

levels(nhanes_1000$Education)
# Create a new variable to re-order Education
nhanes_1000$Education.reord = factor(nhanes_1000$Education, levels = c("8thGrade","9_11thGrade","HighSchool","SomeCollege","CollegeGrad")  )

levels(nhanes_1000$Education.reord)

iNZightPlot(Education.reord, data=nhanes_1000)

iNZightPlot(Education.reord, data=nhanes_1000,colby=Education.reord)

# Now change the colour palette to rainbow colours
iNZightPlot(Education.reord, data=nhanes_1000,colby=Education.reord, col.fun=rainbow)

library(colorspace) 
# Make a plot and also store the output in myplot
myplot = iNZightPlot(Education.reord, data=nhanes_1000,colby=Education.reord)

# Specify a location to store an Interactive HTML file. I will call my file "myintplot.html"
# You will have to change the path to the file!
#filepath = "C:/Users/myusername/Desktop/myintplot.html"
# On my MacOs
filepath = paste0(getwd(),"/myintplot.html")

exportHTML(myplot, filepath)
browseURL(filepath)   #open the file up in my default browser


#  Get a list of all the other things that can be changed in plots 

inzpar()                       # This list is complete

?inzpar                        # This documentation is not complete

