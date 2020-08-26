# The first figure of the manuscript shows variation of composite trait values from PCA analyses
# We changed the labels for clarity, but this is the general code on how I plotted the box plots

p <- ggplot(common, aes(x=range, y=phenology)) + ylab("Days from bud to first flower") + xlab("Range")
p1 <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p1 <- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p1<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p1) 

p <- ggplot(common, aes(x=range, y=rgr)) + ylab("Relative growth rate") + xlab("Range")
p2 <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p2<- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p2<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p2) 

p <- ggplot(common, aes(x=range, y=reprate)) + ylab("Rate of fruit production") + xlab("Range")
p3 <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p3<- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p3<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p3) 

p <- ggplot(common, aes(x=range, y=relfit)) + ylab("Relative fitness") + xlab("Range")
p4 <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p4<- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p4<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p4) 

p <- ggplot(common, aes(x=range, y=leaf)) + ylab("Number of basal leaves") + xlab("Range")
p5 <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p5<- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p5<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p5) 

p <- ggplot(common, aes(x=range, y=lma)) + ylab("Leaf mass per area") + xlab("Range")
p6 <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p6<- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p6<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p6) 

p <- ggplot(common, aes(x=range, y=totalbranches)) + ylab("Total number of branches") + xlab("Range")
p7<- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p7<- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p7<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p7) 

p <- ggplot(common, aes(x=range, y=biomass)) + ylab("Above-ground biomass (g)") + xlab("Range")
p8 <- p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black", size=0.25))
p <- p + theme(axis.title.x = element_blank(),
               axis.text.x  = element_text(vjust=0.5, size=12))
p <- p+ theme(axis.title.y = element_text(size=16),
              axis.text.y  = element_text(size=12))
p8<- p + theme(legend.position="none")
p <- p + stat_summary(geom = "errorbar", width = .25, size=.25)
p8<- p + stat_summary(fun.y = mean, geom = "point", shape = 19, size = 6)
print(p8) 

# These few lines of codes below neatly arranges my boxplots into one large figure

library(ggarrange)

require(gridExtra)
figure <- ggarrange(p1, p2, p3, p4, p5, p6,p7, p8, ncol= 4, nrow=2,
                    labels = c("a)", "b)", "c)", "d)", "e)", "f)", "g)", "h)"),
                    common.legend = TRUE)
figure

