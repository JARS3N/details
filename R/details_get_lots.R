get_lots<-function(){
require(RMySQL)
db<-adminKraken::con_mysql()
dbquery<-dbSendQuery(db,"SELECT DISTINCT(Lot) from mvdata;")
dbLots<-dbFetch(dbquery)
dbClearResult(dbquery)
}
