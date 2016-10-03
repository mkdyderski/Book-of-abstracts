###ggmapa

library(ggmap)
library(rgdal)
library(ggrepel)
hot<-readOGR(dsn='gis',layer='sale')

mape<-get_map(location=c(lon= 16.904156,lat=52.426823), source='google',maptype='toner-2011',color='bw',zoom=17)
plot(mape)


ggmap(mape)+geom_point(data=as.data.frame(hot), aes(x=coords.x1,y=coords.x2), size=2.5, col='red',shape=16)+geom_label_repel(data=as.data.frame(hot),aes(x=coords.x1,y=coords.x2,label=name), fontface='bold', lwd=5,box.padding = unit(0.25, "lines"), point.padding = unit(0.5, "lines"))+theme(axis.line=element_blank(), axis.text.x=element_blank(), axis.text.y=element_blank(), axis.ticks=element_blank(), axis.title.x=element_blank(), axis.title.y=element_blank(),     panel.background=element_blank(), panel.border=element_blank(), panel.grid.major=element_blank(), panel.grid.minor=element_blank(), plot.background=element_blank(),legend.position='null')


uep<-readOGR(dsn='gis',layer='uep')

mape2<-get_map(location=c(lon=  16.918423,lat=52.405769), source='google',maptype='toner-2011',color='bw',zoom=17)
plot(mape2)


ggmap(mape2)+geom_point(data=as.data.frame(uep), aes(x=coords.x1,y=coords.x2), size=2.5, col='red',shape=16)+geom_label_repel(data=as.data.frame(uep),aes(x=coords.x1,y=coords.x2,label=name), fontface='bold', lwd=5,box.padding = unit(0.25, "lines"), point.padding = unit(0.5, "lines"))+theme(axis.line=element_blank(), axis.text.x=element_blank(), axis.text.y=element_blank(), axis.ticks=element_blank(), axis.title.x=element_blank(), axis.title.y=element_blank(),     panel.background=element_blank(), panel.border=element_blank(), panel.grid.major=element_blank(), panel.grid.minor=element_blank(), plot.background=element_blank(),legend.position='null')
