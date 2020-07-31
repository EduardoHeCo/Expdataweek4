#Plot 5
#How have emissions from motor vehicle sources changed from 1999–2008
# in Baltimore City?
library(ggplot2)
library(dplyr)

SCC_motorvehicle<- NEI[which(NEI$SCC %in% SCC[grep("motor",SCC$SCC.Level.Three,ignore.case=TRUE),"SCC"] & NEI$fips=="24510"),]
g<-ggplot(SCC_motorvehicle,aes(year,Emissions))
g+geom_line(stat="summary",fun.y="sum")+labs(y="PM2.5 emissions from motor vehicle source from Baltimore City",x="Year")

#Answer
#If we compare just 1999 vs 2008 not changed is observable but according to the
#data for years 2002 an increased was registerd and was kept throughout 2005.
