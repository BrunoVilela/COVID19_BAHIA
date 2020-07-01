covid.backup<-function(x=2)
{
  ba.bckup<-read.csv2("funcoes/backup/ba.cov2.csv", encoding="UTF-8")[,-1] #loads backup
  ba.cities<-subset(ba.bckup, place_type=="city") #cities info
  last.day<-as.Date(ba.cities[1,1]) #gets last day in the backup
  syst.day<-Sys.Date() #check today day
  if (syst.day-last.day>x) #if data is more than two days old
  {
    ba.cov <- get_corona_br(uf = "BA") #get new data
    update.day<-as.Date(ba.cov[,1]) #check server day
    pos<-which(update.day>last.day) #lines with new info
    new.ba.cov<-ba.cov[pos,] #new info data.frame
    ba.bckup[,"is_last"]<-"False" #changes to false
    ba.bckup<-rbind(new.ba.cov, ba.bckup) #updates backup
    ba.bckup<-ba.bckup[!duplicated(ba.bckup), ] #removes duplicated entries
    write.csv2(ba.bckup, "funcoes/backup/ba.cov2.csv", fileEncoding="UTF-8")
    message("your dataset is updated")
  } else {
    message("no need to update")
  }
  return(ba.bckup)
}
