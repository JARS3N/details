write<-function(DATA){
  con <- adminKraken::con_mysql()
  dbWriteTable(con, name="mvdata",value= DATA,
               append=TRUE,overwrite = FALSE,row.names=FALSE)
  message("wrote to table")
  dbDisconnect(con)
  message("disconnect")
}
