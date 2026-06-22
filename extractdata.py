import yfinance as yf
import pandas as pd

# Define our basket of industry competitors
tickers = ['AAPL', 'MSFT', 'GOOGL', 'AMZN']

print("Starting automated financial extraction pipeline...")

for ticker in tickers:
    print(f"\nFetching data for: {ticker}...")
    company = yf.Ticker(ticker)
    
    # 1. Extract Income Statement
    income = company.financials
    if not income.empty:
        income.to_csv(f"{ticker}_income_statement.csv")
        print(f" -> Saved {ticker}_income_statement.csv")
        
    # 2. Extract Balance Sheet
    balance = company.balance_sheet
    if not balance.empty:
        balance.to_csv(f"{ticker}_balance_sheet.csv")
        print(f" -> Saved {ticker}_balance_sheet.csv")
        
    # 3. Extract Cash Flow Statement
    cash_flow = company.cashflow
    if not cash_flow.empty:
        cash_flow.to_csv(f"{ticker}_cash_flow.csv")
        print(f" -> Saved {ticker}_cash_flow.csv")

print("\nPhase 1 Extraction Complete! All staging files generated.")
