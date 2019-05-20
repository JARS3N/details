parse_dir_with_msgs<-function(x,y){
  start<-Sys.time()
  df<-details::parse_directory(x)
  end<-Sys.time()
  delta_t<-end-start
  directory completed in  17.99606  for Lot: B32018
  cat("=================================================\n")
  cat("directory completed in ",delta_t," for Lot: ")
  message(y)
  details::write(df)
  cat("\n")
}
