library(quantmod)
library(PerformanceAnalytics)

today=Sys.Date()

getSymbols("BTC-USD",from='2019-01-01',to=today)

btc= `BTC-USD`

n<-14
price<- Cl(btc)
price<- na.omit(price)
signal<-c()
rsi<- RSI(price, n)
signal[1:n] <- 0
for (i in (n+1): length(price)){
  if (rsi[i] < 30){ #Eger RSI < 30 al
    signal[i] <- 1
  } else {           #Eger RSI > 30 tut
    signal[i] <- 0
  }
}
signal<-reclass(signal,price)

trade<-Lag(signal)
ret2 <- dailyReturn(btc)*trade
names(ret2) <- 'RSI'
windows()
charts.PerformanceSummary(ret2, main = "RSI for Bitcoin")