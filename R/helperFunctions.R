mod0<-function(x,y){
  if(is.zero(y, strict=T)){
    return(x)
  } else {
    return(x %% y)
  }
}
