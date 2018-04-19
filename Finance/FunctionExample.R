# Get quantmod
if (!require("quantmod")) {
  install.packages("quantmod")
  library(quantmod)
}

start <- as.Date("2016-01-01")
end <- as.Date("2016-12-01")

get_avg_daily_return = function(ticker){
  stuff = getSymbols(ticker, src = "yahoo", from = start, to = end, auto.assign=FALSE)
  vec = c()
  i = 1
  for (myass in drop(coredata(stuff[,6]))) {
    if(i == 1){
      vec = c(1)
    }else{
      vec = c(vec, (myass - (myass - 1)) / myass) 
    }
    i = i + 1
  }
  
  return(mean(vec))
  
}
