#Plot 4
#Across the United States, how have emissions from coal combustion-related 
#sources changed from 1999–2008?
library(ggplot2)
library(dplyr)

SCC_coal<- NEI[which(NEI$SCC %in% SCC[grep("coal",SCC$Short.Name,ignore.case = TRUE),"SCC"]),]
g<-ggplot(SCC_coal,aes(year,Emissions))
g+geom_line(stat="summary",fun.y="sum")+labs(y="Emissions from coal combustion-related sources",x="Year")

#answer
#The emissions from coal decreased from coal source trough 1999 to 2008 (from 2002
#to 2008 no changed were significatively registered.