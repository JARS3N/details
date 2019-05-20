write<-function(DATA){
  if(is.null(DATA)){
    message("NULL directory")
    return(NULL)
    }
  require(RMySQL)
  con <- adminKraken::con_mysql()
  dbWriteTable(con, name="mvdata",value= DATA,
               append=TRUE,overwrite = FALSE,row.names=FALSE)
  message("wrote to table")
  dbDisconnect(con)
  message("disconnect")
}
