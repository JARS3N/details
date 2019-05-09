cron<-function(){
print(Sys.time())
df<-search_dirs()
dbLots <- details::get_lots()
need_to_add <- df[!(df$Lot %in% dbLots$Lot), ]
work<-details::check_nightly(need_to_add)
work
}
