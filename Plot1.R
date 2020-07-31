#Plot1
SCC<-readRDS("Source_Classification_Code.rds") 
NEI<-readRDS("summarySCC_PM25.rds")

sum_emission=matrix(nrow=4,ncol=2)
sum_emission[,1]=levels(as.factor(NEI$year))
for (i in seq_along(levels(as.factor(NEI$year)))){
  sum_emission[i,2]=sum(NEI[which(NEI$year==levels(as.factor(NEI$year))[i]),4])
}
sum_emission<- data.frame(sum_emission,stringsAsFactors = F)
names(sum_emission)<-c("Year","Emission")
sum_emission$Emission<-as.numeric(sum_emission$Emission)
with(sum_emission,plot(Year,Emission,type="b",main="Total emissions from PM2.5"))

#Question
#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 

Answer
Yes, the total emissions from PM2.5 decreased.
