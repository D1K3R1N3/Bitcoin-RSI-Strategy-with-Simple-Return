# Bitcoin-RSI-Strategy-with-Simple-Return
RSI Trading Strategy for Bitcoin

This project utilizes the R programming language along with the quantmod and PerformanceAnalytics libraries to implement a trading strategy based on the Relative Strength Index (RSI) for Bitcoin (BTC-USD). The RSI is a momentum oscillator that measures the speed and change of price movements.

To run this project, please follow these steps:

Install the required libraries: quantmod and PerformanceAnalytics. You can install them using the following commands in your R console:

arduino
Copy code
install.packages("quantmod")
install.packages("PerformanceAnalytics")
Open the R script file containing the code.

Adjust the date range for historical data by modifying the 'from' and 'to' parameters in the getSymbols() function. The default range is set from January 1, 2019, to the current date.

Execute the script to load the BTC-USD historical data, calculate the RSI, and generate trading signals.

The resulting performance of the RSI strategy will be plotted using the PerformanceAnalytics library.

Please note the following:

This script assumes you have an active internet connection to download the historical data for BTC-USD.
The RSI trading strategy implemented in this project uses a simple rule where a buy signal (1) is generated when the RSI value falls below 30, and a hold signal (0) is generated otherwise.
The performance of the strategy is evaluated by multiplying the daily returns of BTC-USD by the trading signals.

For any further questions or assistance, please reach out to ademhat10@gmail.com
