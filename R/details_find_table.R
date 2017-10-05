find_table<-function(d){
  xpathSApply(d, path = "//List//InspectionDetailsItem[Name='Results']//Details",xmlValue)
}
