parse_dir_with_msgs<-function(x,y){
  start<-Sys.time()
  df<-details::parse_directory(x)
  end<-Sys.time()
  delta_t<-end-start
  cat("=================================================\n")
  cat("directory completed in ",delta_t," for Lot: ")
  message(y)
  if (is.null(df)<1){
  message("nothing to write home about")
    }else{
  details::write(df)
    }
  cat("\n")
}
