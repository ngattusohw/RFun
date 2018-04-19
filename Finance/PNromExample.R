# Get quantmod
if (!require("quantmod")) {
  install.packages("quantmod")
  library(quantmod)
}

start <- as.Date("2016-01-01")
end <- as.Date("2016-10-01")

getSymbols("AAPL", src = "yahoo", from = start, to = end)
getSymbols("MSFT", src = "yahoo", from = start, to = end)

apple = AAPL$AAPL.Adjusted
reg.curve.num <- drop(coredata(AAPL$AAPL.Adjusted))

pnorm(reg.curve.num,mean = 1,sd = 6, lower.tail=FALSE)
