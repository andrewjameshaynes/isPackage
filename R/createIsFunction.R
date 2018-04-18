##: createIsFunction() - Creates on the fly functions to check a variable is a certain class
##:                      Made to be used programatically to check values

createIsFunction<-function(class){
  assign(paste0("is.",class), function(x){class(x)==class}, envir = .GlobalEnv)
}
