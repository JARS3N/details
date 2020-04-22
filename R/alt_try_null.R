alt_try_null<-function(u){
  tryCatch(detalis::alt_parse(u),error=function(e){NULL},finally=message(u))
}
