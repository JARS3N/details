parse_directory<-function(DIR=choose.dir()){
  require(parallel);
  FLS <-list.files(path=DIR,recursive=T,full.names=T,pattern="details.xml$")
  size.of.list <- length(FLS);
  cl <- makeCluster( min(size.of.list, detectCores()) );
  work<-parallel::parLapply(cl=cl,FLS,parse)
  Out<-do.call('rbind',work[!grepl("FAILURE",work)])
  stopCluster(cl);
  Out
}
