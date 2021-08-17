gfrCalc <- function(age , sex, wt, cr){
  gfr <- ((140-age)*wt)/(72*cr)
  if (sex == 'm') {
    gfr <- gfr * 1
  } else if ( sex == 'f') {
    gfr <- gfr * 0.85
  }
  return(gfr)
}

#gfrCalc(30 , 'm' , 80 , 1.3)