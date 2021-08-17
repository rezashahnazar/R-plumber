library(plumber)

#* @get /percent
function(req){
  n1 <- (req$args$n1)
  n2 <- (req$args$n2)
  percent <- n1/n2*100
  return(percent)
}