covid.clean<-function(x)
{
  fix.dat<-x
  codes<-unique(x$city_ibge_code)
  n<-length(codes)
  
  lx<-split(x, x$city_ibge_code)
  
  
  confirmed<-sapply(lx, "[", "confirmed")
  deaths<-sapply(lx, "[", "deaths")
  pop<-sapply(lx, "[", "estimated_population_2019")
  
 back.confirmed<-sapply(confirmed, back.clean)
 back.deaths<-sapply(deaths, back.clean)
 
 
 fix.conf<-unlist(back.confirmed)
 fix.deat<-unlist(back.deaths)
 fix.pop<-unlist(pop)
 fix.taxs<-fix.conf/fix.pop*100000
 fix.rate<-fix.deat/fix.conf
 
 
 pos<-regexpr("[.]", names(fix.conf))-1
 fix.codes<-substr(names(fix.conf), 1, pos)


 ord<-order(fix.dat$city_ibge_code)
 ord.fix.dat<-fix.dat[ord,]
 rem.nas<-which(!is.na(ord.fix.dat$city_ibge_code))
 ord.fix.dat<-ord.fix.dat[rem.nas,]
 
 ord.fix.dat[,"confirmed"]<-fix.conf
 ord.fix.dat[,"deaths"]<-fix.deat
 ord.fix.dat[,"confirmed_per_100k_inhabitants"]<-fix.taxs
 ord.fix.dat[,"death_rate"]<-fix.rate
 
 fix.dat[rownames(ord.fix.dat), ]<-ord.fix.dat
 return(fix.dat)
 }

