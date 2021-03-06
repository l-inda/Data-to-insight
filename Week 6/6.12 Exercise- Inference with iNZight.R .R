# Setup
library(iNZightPlots)
library(FutureLearnData)
data(nhanes_1000)
names(nhanes_1000)

# Plot BMI by AgeDecade
library(iNZightPlots)
iNZightPlot(AgeDecade, BMI, data=nhanes_1000)

# Add inference information
library(iNZightPlots)
iNZightPlot(AgeDecade, BMI, data=nhanes_1000,
            inference.type=c("comp","conf"),
            inference.par="mean")
# Commentary (on this side to save space)
# You can squash your plot window vertically so that it is
#easier to see how much overlap there is between each
#age group.
# What do you see here? The thick black lines are called
#‘comparison intervals’ and are the lines that we
#look at when observing any overlap. The thin red lines are the
#individual confidence intervals for each mean/median.

# View detailed inferential information (Normal Theory)
library(iNZightPlots)
getPlotSummary(AgeDecade, BMI, data=nhanes_1000,
               summary.type="inference", inference.type="conf")

##We’ll now do this with a pair of Categorical variables
# Filter out under 20s
Temp=subset(nhanes_1000,AgeDecade !=" 0-9" &
                AgeDecade !=" 10-19")
Temp$AgeDecade=factor(Temp$AgeDecade)
# Reorder the HealthGen variable
Temp$HealthGen.reord = factor(Temp$HealthGen, levels                            = c("Excellent","Vgood","Good","Fair","Poor") )

# Plot as separate bar charts with inference information
library(iNZightPlots)
iNZightPlot(HealthGen.reord, g1=AgeDecade, data=Temp,
            inference.type=c("comp","conf") )

# Plot as side by side without inference comparison
library(iNZightPlots)
iNZightPlot(HealthGen.reord, AgeDecade, data=Temp,
            inference.type=c("comp","conf") )
                             