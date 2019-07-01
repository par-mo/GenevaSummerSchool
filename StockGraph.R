# Load quantmod
library(quantmod)

# Download data
today <- Sys.Date() # To show the price of the stock for apple 
five_years_ago <- seq(today, length = 2, by = "-5 year")[2]
getSymbols("AAPL", from = five_years_ago, to = today)
Xt = ClCl(AAPL)
plot(AAPL$AAPL.Close)

