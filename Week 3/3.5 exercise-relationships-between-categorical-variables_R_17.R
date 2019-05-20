# R CODE from the file "3.5 exercise-relationships-between-categorical-variables_R_17.pdf"
# Provided here in case of problems with copying and pasting from the pdf


# Setup
library(iNZightPlots)
library(FutureLearnData)
data(nhanes_1000)

# Recreate  Education.reord 
nhanes_1000$Education.reord = factor(nhanes_1000$Education, levels = c("8thGrade","9_11thGrade","HighSchool","SomeCollege","CollegeGrad"))

iNZightPlot(Education.reord, data=nhanes_1000)

# Education.reord by Gender (side by side barcharts) 
iNZightPlot(Education.reord, Gender, data=nhanes_1000)

# Education subset by  Gender  (also coloured by Gender)
iNZightPlot(Education.reord, g1=Gender, data=nhanes_1000, colby=Gender)

#  Display just the female plot
iNZightPlot(Education.reord, g1=Gender, g1.level="female", data=nhanes_1000, colby=Gender)

#  Display just the male plot
iNZightPlot(Education.reord, g1=Gender, g1.level="male", data=nhanes_1000, colby=Gender)

#  Plot Education.reord subset by AgeDecade
iNZightPlot(Education.reord, g1=AgeDecade, data=nhanes_1000, colby=AgeDecade)

# Filter out unhelpful data  (Under 20s)
# Make a subset of the data without "under 20s" & call it Temp 
#  (This is an example of "filtering" the data)"

Temp = subset(nhanes_1000, AgeDecade!=" 0-9" & AgeDecade !=" 10-19")       #    "!=" is read as "is not equal to"

table(Temp$AgeDecade)

# This will remove the empty levels 
Temp$AgeDecade=factor(Temp$AgeDecade) 

#  Replot the data using the subset of the data called Temp
iNZightPlot(Education.reord, g1=AgeDecade, data=Temp, colby=AgeDecade)

#Optional: Try this new feature (interactive web graphics)

# Make a plot and also store the output in myplot
myplot = iNZightPlot(Education.reord, Gender, data=nhanes_1000)

# Specify a location to store an Interactive HTML file. I will call my file "myintplot.html"
# You will have to change the path to the file because this one is to a location on my desktop!
#filepath = "C:/Users/myusername/Desktop/myintplot.html" 
filepath = paste0(getwd(),"/myintplot.html")

exportHTML(myplot, filepath)
browseURL(filepath) #open the file up in my default browser
