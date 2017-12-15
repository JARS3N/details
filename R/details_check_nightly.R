check_nightly <- function(u) {
  ignore_msg1 <- cat("nothing to see her,move along. ")
  ignore_msg2 <- message(Sys.time())
  # check if anything to add
  if (is.null(u)) {
    ignore_msg1
    ignore_msg2
    return(NULL)
  }
  if (nrow(u) < 1) {
    ignore_msg1
    ignore_msg2
    return(NULL)
  } else{
    big_start <- Sys.time()
    BIG <- Map(details::parse_dir_with_msgs,
               x = u$loc,
               y = u$Lot)
    
    big_end <- Sys.time()
    big_delta <- big_end - big_start
    print(big_delta)
    suppressPackageStartupMessages(library(data.table))
    
    OUT <- data.table::rbindlist(BIG)
    
    details::write(as.data.frame(OUT))
  }
}
