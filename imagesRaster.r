library(raster)
waldo=brick("/Users/sciruela/Documents/imagesRaster/DepartmentStore.tif")
waldo
pdf(("/Users/sciruela/Documents/imagesRaster/graph1.pdf")
plot(waldo,useRaster=FALSE)
dev.off()
white = min(waldo[[1]] , waldo[[2]] , waldo[[3]])>220
focalswhite = focal(white, w=3, fun=mean)
pdf(("/Users/sciruela/Documents/imagesRaster/graph2.pdf")
plot(focalswhite,useRaster=FALSE)
dev.off()

red = (waldo[[1]]>150)&(max(  waldo[[2]] , waldo[[3]])<90)
focalsred = focal(red, w=3, fun=mean)
pdf(("/Users/sciruela/Documents/imagesRaster/graph3.pdf")
plot(focalsred,useRaster=FALSE)
dev.off()

striped = red; n=length(values(striped)); h=5
values(striped)=0
values(striped)[(h+1):(n-h)]=(values(red)[1:(n-2*h)]==
TRUE)&(values(red)[(2*h+1):n]==TRUE)
focalsstriped = focal(striped, w=3, fun=mean)
pdf(("/Users/sciruela/Documents/imagesRaster/graph4.pdf")
plot(focalsstriped,useRaster=FALSE)
dev.off()

waldo=brick("/Users/sciruela/Documents/imagesRaster/US_flag_on_Moon__1600_s.jpg")
waldo
pdf(("/Users/sciruela/Documents/imagesRaster/graph5.pdf")
plot(waldo,useRaster=FALSE)
dev.off()
white = min(waldo[[1]] , waldo[[2]] , waldo[[3]])>220
focalswhite = focal(white, w=3, fun=mean)
pdf(("/Users/sciruela/Documents/imagesRaster/graph6.pdf")
plot(focalswhite,useRaster=FALSE)
dev.off()

red = (waldo[[1]]>150)&(max(  waldo[[2]] , waldo[[3]])<90)
focalsred = focal(red, w=3, fun=mean)
pdf(("/Users/sciruela/Documents/imagesRaster/graph7.pdf")
plot(focalsred,useRaster=FALSE)
dev.off()

striped = red; n=length(values(striped)); h=5
values(striped)=0
values(striped)[(h+1):(n-h)]=(values(red)[1:(n-2*h)]==
TRUE)&(values(red)[(2*h+1):n]==TRUE)
focalsstriped = focal(striped, w=3, fun=mean)
pdf(("/Users/sciruela/Documents/imagesRaster/graph8.pdf")
plot(focalsstriped,useRaster=FALSE)
dev.off()