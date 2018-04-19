# Get quantmod
if (!require("quantmod")) {
  install.packages("quantmod")
  library(quantmod)
}

start <- as.Date("2016-01-01")
end <- as.Date("2016-10-01")

getSymbols("AAPL", src = "yahoo", from = start, to = end)
getSymbols("MSFT", src = "yahoo", from = start, to = end)

reg.curve.num <- drop(coredata(AAPL$AAPL.Adjusted))

dailyReturn = (reg.curve.num[2] - reg.curve.num[1])/reg.curve.num[2]
dailyReturn

#AAPL$AAPL.Adjusted
#vec = c()
#i = 1
#for (myass in drop(coredata(AAPL$AAPL.Adjusted))) {
#  if(i == 1){
#    vec = c(vec,myass)
#  }else{
#    vec = c(vec, (myass - (myass - 1)) / myass) 
#  }
#  i = i + 1
#}
#vec

