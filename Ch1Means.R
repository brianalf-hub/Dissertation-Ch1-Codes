# The first figure of the manuscript shows variation of composite trait values derived from PCA analyses
# We changed the labels for clarity, but this is the general code on how I plotted the box plots


#Start
rm(list=ls(all=TRUE)) #Clears previous work in R#maptools, 

library(ggplot2)
library(Hmisc)

#Set working directory
setwd("G:/RCodes/Ch1")

#Import data set for selection analysis, four outliers removed in Excel
library(readr)
common <-read_csv("G:/RCodes/Ch1/TraitPCData.csv")
View(common)

#Set names of trait variables
pop <- common$pop2
range <- common$range
#Order the arrangements of range factors
common$range <- factor(common$range, levels=c("Native", "Invasive", "Landrace"))


#Boxplots
#@tiff('branchpc1box.tiff', units="in", width=5, height=5, res=1600)
p <- ggplot(common, aes(x=range, y=PhenolPC)) #geom_jitter(colour="gray")
#Titles
p <- p + ylab("Phenology PC1")
p <- p + xlab("Range")
p <- p + geom_hline(aes(yintercept = mean(PhenolPC)), linetype="dashed", colour = "black", alpha = 0.5, size=.75) #to stand out behind CI
p <- p + geom_boxplot(size = 1.25, alpha = 0.5, width=0.75)
p <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                            panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=1))
p <- p + theme(axis.title.x = element_text(face="bold", size=20),
        axis.text.x  = element_text(vjust=0.5, size=16))
p <- p + theme(axis.title.y = element_text(face="bold", size=20),
        axis.text.y  = element_text(vjust=0.5, size=16))
p <- p + theme(legend.position="none")

#Errorbars and means
p <- p + stat_summary(fun.data = "mean_cl_normal", geom = "errorbar", width = .5, size=.5)
p <- p + stat_summary(fun = mean, geom = "point", shape = 18, size = 6, alpha = 0.5)
print(p) 

# I used the ggplot2 codes above to make 7 more plots to make the figure below
# These few lines of codes below neatly arranges my boxplots into one large figure

library(ggarrange)

require(gridExtra)
figure <- ggarrange(p1, p2, p3, p4, p5, p6,p7, p8, ncol= 4, nrow=2,
                    labels = c("a)", "b)", "c)", "d)", "e)", "f)", "g)", "h)"),
                    common.legend = TRUE)
figure

