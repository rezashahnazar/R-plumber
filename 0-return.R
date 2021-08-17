library(plumber)

#* @get /reza
function(req){
  #browser()
  return(req$args)
}