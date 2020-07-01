#Carregando um backup dos dados
#incluindo um dia sem informação de casos por municípios

ba.bckup<-read.csv2("funcoes/backup/ba.cov.csv")[,-1] #loads a data backup

#Loads one missing day info  (08-06-2020)
ba.missing<-read.csv2("funcoes/backup/200608.csv") #loads missing day
p.day<-grep("2020-06-08", ba.bckup$date) #position of missing day
ba.bckup1<-ba.bckup[1:(p.day-1), ] #before missing day
ba.bckup2<-ba.bckup[(p.day+1):nrow(ba.bckup), ] #after missing day

#puts together and saves
new.ba.backup<-rbind(ba.bckup1, ba.missing, ba.bckup2)
write.csv2(new.ba.backup, "funcoes/backup/ba.cov2.csv")
