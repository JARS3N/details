check_nightly<-function(need_to_add){
  # check if anything to add
  if(is.null(need_to_add) | nrow(need_to_add)<1){
    cat("nothing to see her,move along. ")
    message(Sys.time())
    return(NULL)
  }else{
big_start <- Sys.time()
BIG <- Map(details::parse_dir_with_msgs,
           x = need_to_add$loc,
           y = need_to_add$Lot)

big_end <- Sys.time()
big_delta <- big_end - big_start
print(big_delta)
suppressPackageStartupMessages(library(data.table))

OUT<-data.table::rbindlist(BIG)

details::write(as.data.frame(OUT))
}
}
