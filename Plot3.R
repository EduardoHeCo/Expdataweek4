#Plot 3
#Of the four types of sources indicated by the \color{red}{\verb|type|}type 
#(point, nonpoint, onroad, nonroad) variable, which of these four sources 
#have seen decreases in emissions from 1999–2008 for Baltimore City? 
#Which have seen increases in emissions from 1999–2008? Use the ggplot2 
#plotting system to make a plot answer this question.

SCC<-readRDS("Source_Classification_Code.rds") 
NEI<-readRDS("summarySCC_PM25.rds")
library(ggplot2)

sub_emissions<- subset(NEI,fips="24510")
g<-ggplot(sub_emissions,aes(year,Emissions,color=type))
g+geom_line(stat="summary",fun.y="sum")+labs(y="PM2.5 Total emissions from  Baltimore City",
	x="Year")

#Answer
#NONPOINT AND POINT decrease from 1999 to 2002, then they look stable but from 
#2005 to 2008 decreased again. Significatively, no one increased.
