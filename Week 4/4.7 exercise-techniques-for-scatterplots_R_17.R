# R CODE from the file "4.7 exercise-techniques-for-scatterplots_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf

# Setup
library(iNZightPlots)
library(FutureLearnData)
data(nhanes_1000)

# Plot Weight vs  Age 
iNZightPlot(Age, Weight,data=nhanes_1000)

# Add a trend line 
iNZightPlot(Age, Weight, data=nhanes_1000, trend="linear")

#  Get some summary information (result depends on trends fitted)
getPlotSummary(Age, Weight, data=nhanes_1000, trend="linear")
getPlotSummary(Age, Weight, data=nhanes_1000, trend="linear", summary.type="inference")

# Add more trend curves and a smoother 
iNZightPlot(Age,Weight,data=nhanes_1000, trend=c("linear", "quadratic", "cubic") , smooth=.25)

# Make all the lines thicker, all solid lines, and change line colours
iNZightPlot(Age,Weight,data=nhanes_1000, trend=c("linear", "quadratic", "cubic") , smooth=.25, lwd=2, lty.trend=list(linear=1,quadratic=1,cubic=1), col.trend=list(linear="red", quadratic="yellow", cubic="blue"), col.smooth="green")

# Scatter plot coloured by Height and with Transparency
iNZightPlot(Age, Weight, data=nhanes_1000, colby=Height, alpha=.3)

# alpha (0 to 1) controls transparency. Smaller for more transparent
# Make the points smaller
iNZightPlot(Age, Weight, data=nhanes_1000, colby=Height, alpha=.3, cex.pt=.2)

# Create a median smoother in black
iNZightPlot(Age, Weight, data=nhanes_1000, colby=Height, alpha=.3, quant.smooth=.5, col.smooth="black")

# Create a median and quartile smoothers all in black
iNZightPlot(Age, Weight, data=nhanes_1000, colby=Height, alpha=.3, quant.smooth=c(.25,.5,.75), col.smooth="black")

iNZightPlot(Age, HomeRooms, data=nhanes_1000)

#  Jitter in the vertical (y) direction
iNZightPlot(Age, HomeRooms, data=nhanes_1000, jitter="y")

# Here is sample code for interactive web graphics:
# (works only with single graphs and not with a panel of several graphs) 
##################################################

# Make a plot and also store the output in myplot
myplot = iNZightPlot(Age, Weight, data=nhanes_1000, trend=c("linear", "quadratic"))

# Specify a location to store an Interactive HTML file. I will call my file "myintplot.html"
# You will have to change the path to the file because this one is to a location on my desktop!
#filepath = "C:/Users/myusername/Desktop/myintplot.html"
filepath = paste0(getwd(),"/myintplot.html")
exportHTML(myplot, filepath)
browseURL(filepath)   #open the file up in my default browser

# If the plot is truncated make your R plotting window smaller
# To add extra variables, e.g. Country ?
exportHTML(myplot, filepath, data=nhanes_1000, extra.vars = c("ID", "Gender"))
browseURL(filepath)   #open the file up in my default browser



