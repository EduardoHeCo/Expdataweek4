#Plot 2
#Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
#(\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? 
#Use the base plotting system to make a plot answering this question.

SCC<-readRDS("Source_Classification_Code.rds") 
NEI<-readRDS("summarySCC_PM25.rds")

sum_emission=matrix(nrow=4,ncol=2)
sum_emission[,1]=levels(as.factor(NEI$year))
for(i in seq_along(levels(as.factor(NEI$year)))){
  sum_emission[i,2]=sum(NEI[which(NEI$year==levels(as.factor(NEI$year))[i] & NEI$fips=="24510"),4])
}
sum_emission<-data.frame(sum_emission,stringsAsFactors=F)
names(sum_emission)<-c("Year","Emission")
sum_emission$Emission<-as.numeric(sum_emission$Emission)
with(sum_emission,plot(Year,Emission,type="b",main="PM2.5 from Baltimore City, Maryland",
	col="red"))

#Answer
#The Total emission from PM2.5 in the Baltimore City decreased from 1999 to 2002,
#but increased again from 2002 to 2005, and a decrease was registered in 2008.

