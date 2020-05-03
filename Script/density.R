library(rgdal)
library(raster)
library(rgeos)


#rod.est<-readOGR("mapbiomas/rodoviario/rodovia_estadual.shp")
#rod.fed<-readOGR("mapbiomas/rodoviario/Rodovias_Federais.shp")
#rod<-raster::union(rod.est, rod.fed)
#rm(rod.est, rod.fed)
rod<-readOGR("mapbiomas/rodoviario/Rodovias_Federais.shp")

ibge<-readOGR("ibge/BRMUE250GC_SIR.shp")
names(ibge)
n<-length(ibge$CD_GEOCMU)
i=1
road.dist<-numeric()
area.muni<-numeric()
raster::crs(ibge)
raster::crs(rod)


#Federal
for (i in 1:n)
{
	temp.ibge<-ibge[i,]
	centroide<-rgeos::gCentroid(temp.ibge)
	zone<-floor((180-abs(centroide@coords[1,1]))/6+1)
	new.crs<-paste0("+proj=utm +zone=", zone," datum=WGS84")
	
	temp.road<-tryCatch({temp.road<-crop(rod, extent(temp.ibge))}, error=function(e){NA})
	if(!is.na(temp.road))
	{
		temp.ibge<-spTransform(temp.ibge, CRS(new.crs))
		temp.road<-spTransform(temp.road, CRS(new.crs))

		road.dist[i]<-rgeos::gLength(temp.road)
		area.muni[i]<-rgeos::gArea(temp.ibge)
		dens.road<-road.dist/area.muni
	}	
print(i)
}

federal<-data.frame(road.dist, area.muni, dens.road)
write.csv2(federal, "federal.csv")

#Estadual
rod.est<-readOGR("mapbiomas/rodoviario/rodovia_estadual.shp")
names(rod.est)
table(rod.est$revestimen)
pos<-which(rod.est$revestimen=="Pavimentado")
rod.est<-rod.est[pos,]

road.dist<-numeric()
area.muni<-numeric()


for (i in 1:n)
{
	temp.ibge<-ibge[i,]
	centroide<-rgeos::gCentroid(temp.ibge)
	zone<-floor((180-abs(centroide@coords[1,1]))/6+1)
	new.crs<-paste0("+proj=utm +zone=", zone," datum=WGS84")
	
	temp.road<-tryCatch({temp.road<-crop(rod.est, extent(temp.ibge))}, error=function(e){NA})
	if(!is.na(temp.road))
	{
		temp.ibge<-spTransform(temp.ibge, CRS(new.crs))
		temp.road<-spTransform(temp.road, CRS(new.crs))

		road.dist[i]<-rgeos::gLength(temp.road)
		area.muni[i]<-rgeos::gArea(temp.ibge)
		dens.road<-road.dist/area.muni
	}	
print(i)
}
estadual<-data.frame(road.dist, area.muni, dens.road)
