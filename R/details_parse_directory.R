parse_directory<-function(DIR=choose.dir()){
  require(parallel);
 # FLS<- list.files(DIR,recursive=T,pattern='details.xml',full.names = T);
  # changed this because there always should be a file if there is a sub dir
  #FLS <- file.path(list.dirs(DIR,full.names = T,recursive = F),"details.xml")
  # turns out there was a file missing and threw an error
  FLS <- sapply(list.dirs(d,full.names = T,recursive = F),list.files,simplify=T,full.names=T,pattern="details.xml",USE.NAMES = F)
  size.of.list <- length(FLS);
  cl <- makeCluster( min(size.of.list, detectCores()) );
  work<-parallel::parLapply(cl=cl,FLS,parse)
  Out<-do.call('rbind',work[!grepl("FAILURE",work)])
  stopCluster(cl);
  Out
}
