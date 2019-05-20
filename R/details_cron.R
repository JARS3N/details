cron<-function(){
print(Sys.time())
df<-search_dirs()
dbLots <- details::get_lots()
need_to_add <- df[!(df$Lot %in% dbLots$Lot), ]
need_to_add$nope<-sapply(need_to_add$Lot,nchar)
work<-details::check_nightly(need_to_add[need_to_add$nchar==6,])
work
}
