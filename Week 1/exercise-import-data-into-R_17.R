# R Code in the file "1.15 exercise-import-data-into-inzight_16.pdf"
# Provided here in case of problems with copying and pasting from the pdf
# Note that everything on a line after a "#" character is a Comment for readers and is ignored by R


library(FutureLearnData)         # Load the package FutureLearnData
data(package= "FutureLearnData") # give me info about the data in the package FutureLearnData
# I can copy and paste from this to get the names of data sets exactly right
data(olympics100m)               # data(dataset name) makes it available for use
olympics100m                     #  saying the name of something causes it to display
#  OK to do here as this particular dataset is small
# Otherwise use commands from Exercise 1.10 for displaying small parts of the data set
Olympics100m                     #  this name is wrong because of the capital "O" so will give an error
data(package= ìFutureLearnDataî) #  curly quotation marks ì from Word, not straight ones, ", so error

# This whole block of lines can be copied and pasted as code. Try it

# -----------------------------

# R CODE

# Import the file Census at School-500.csv

cas_500 =  read.csv(file.choose(), header = TRUE)
cas_500[1:5, 1:9]
names(cas_500)

library(iNZightPlots)

iNZightPlot(armspan, data= cas_500)

# Now import the file olympics100m.txt

Olymp_imp = read.table(file.choose(), header = TRUE, sep="\t")
names(Olymp_imp)

iNZightPlot(YEAR, TIME, data= Olymp_imp) 

?read.table

?read.csv
