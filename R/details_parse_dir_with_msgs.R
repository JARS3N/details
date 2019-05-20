parse_dir_with_msgs<-function(x,y){
  start<-Sys.time()
  df<-details::parse_directory(x)
  end<-Sys.time()
  delta_t<-end-start
  cat("=================================================\n")
  cat("directory completed in ",delta_t," for Lot: ")
  message(y)
  details::write(df)
  cat("\n")
}
