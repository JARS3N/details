parse_directory<-function(DIR=choose.dir()){
  require(parallel);
 # FLS<- list.files(DIR,recursive=T,pattern='details.xml',full.names = T);
  # changed this because there always should be a file if there is a sub dir
  FLS <- file.path(list.dirs(DIR,full.names = T,recursive = F),"details.xml")
  size.of.list <- length(FLS);
  cl <- makeCluster( min(size.of.list, detectCores()) );
  work<-parallel::parLapply(cl=cl,FLS,parse)
  Out<-do.call('rbind',work[!grepl("FAILURE",work)])
  stopCluster(cl);
  Out
}
