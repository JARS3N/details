search_dirs<-function(OS=Sys.info()['sysname']){
  if(OS=="Windows"){
    main <- "G:/Spotting/Logging"
  }else{
    main <- "/mnt/LSAG/Spotting/Logging" 
  }
  subs <- c("XFe24", "XFe96", "XFp")
  dirs <- file.path(main, subs) 
  sub2 <- unlist(lapply(dirs, list.dirs, recursive = F, full.names = T))
  # df = lots in the Spotting directory
  df <- data.frame(loc = sub2,
                   Lot = basename(sub2),
                   stringsAsFactors = F)
}
