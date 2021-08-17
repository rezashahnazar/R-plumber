library(plumber)

#* @get /percent
function(req){
  n1 <- as.numeric(req$args$n1)
  n2 <- as.numeric(req$args$n2)
  percent <- n1/n2*100
  return(percent)
}