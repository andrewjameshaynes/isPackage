##is.zero() - checks if a numeric is zero
is.zero<-function(x, strict = F){
  if(strict == F){ifelse(x==0,T,F)}
  else if (strict == T){identical(x,0)}
}

##is.natural() - checks to see if a number is both whole, and > 0
is.natural<-function(x){
  if(is.numeric(x) == F){
    stop("your input is not a number!")
    }
  ifelse(is.numeric(x) == T & x > 0, is.zero(mod0(x, floor(x))), FALSE)
}

##: is.decimal() - checks to see if a number is a decimal, both positive and negative
##:                where a decimal is defined as a number that can't coerce to integer without rounding
is.decimal<-function(x){
  tmp = abs(mod0(x,floor(x)))
  ifelse(!(is.natural(tmp) | is.zero(tmp)),T,F)
}

##: is.decimal_forced() - Checks the string conversion of x for a period.
is.decimal_forced<-function(x){
  if(is.numeric(x) == F){
    stop("your input is not a number!")
  }
  any(el(strsplit(as.character(x),'')) == '.')
}

##: is.discrete() - checks to see if a single (|) value is char or factor
is.discrete<-function(x){is.factor(x) | is.character(u)}

##: is.continuous() - checks to see if value is numeric and can therefore be applied to continuous scale
is.continuous<-function(x){is.numeric((x))}

