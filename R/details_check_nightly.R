#check_nightly <- function(u) {
#  ignore_msg1 <- "nothing to see here,move along! "
#  ignore_msg2 <- Sys.time()
#  # check if anything to add
#  if (is.null(u)) {
#    cat(ignore_msg1)
#    cat(ignore_msg2)
#    return(NULL)
#  }
#  if (nrow(u) < 1) {
#    cat(ignore_msg1)
#    cat(ignore_msg2)
#    return(NULL)
#  } else{
#    big_start <- Sys.time()
#    BIG <- Map(details::parse_dir_with_msgs,
#               x = u$loc,
#               y = u$Lot)
#    
#    big_end <- Sys.time()
#    big_delta <- big_end - big_start
#    print(big_delta)
#  }
#}
