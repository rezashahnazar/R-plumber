library(plumber)

#* @get /gfr
function(req){
  age <- as.numeric(req$args$age)
  sex <- as.factor(req$args$sex)
  wt <- as.numeric(req$args$wt)
  cr <- as.numeric(req$args$cr)
  
  gfr <- ((140-age)*wt)/(72*cr)
  if (sex == 'm') {
    gfr <- gfr * 1
  } else if ( sex == 'f') {
    gfr <- gfr * 0.85
  }
  return(gfr)
}