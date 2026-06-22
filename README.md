# Apple Inc. (AAPL) Corporate Financial Performance Dashboard

## Project Overview
An executive-facing Power BI analytics dashboard designed to transform raw corporate financial statement data into structured, explanatory visual stories. This tool enables dynamic analysis of Apple's profitability, capital structure, and liquidity metrics across multiple fiscal years.

## Interactive Dashboard Preview
<img width="926" height="520" alt="image" src="https://github.com/user-attachments/assets/379296dd-6dd4-461a-8c8b-0030de616dcc" />


## Core Technical Architecture
* **Frontend Visualization:** Power BI Desktop utilizes structured visual hierarchy, clean white space, and dynamic tile-navigation filters to track core financial metrics.
* **Backend Database Infrastructure:** Optimized T-SQL views (`v_CorporateFinancialSummary`) designed to normalize and clean 10-K/10-Q filing figures.
* **Data Timeline Coverage:** Fiscal Years 2022 – 2025.

## Key Insights & Design Features
* **Exploratory to Explanatory Transition:** Designed with a modern executive tile navbar layout, removing gridline clutter, and implementing direct data labels for immediate data interpretation.
* **Dynamic Metric Switching:** Seamlessly toggles canvas visuals between Gross Profit, Net Income, Total Assets, Total Revenue, Total Liabilities, and Stockholders' Equity.
* **Chronological Optimization:** Data sorted strictly by ascending Fiscal Year (FY22 - FY25) to display accurate performance trajectories over time.

## How to Interact with this Project
1. **View Code:** Explore the underlying logic by opening the `.sql` script file in this repository.
2. **Download Dashboard:** Download the `.pbix` file to open, inspect, and interact with the data model natively in Power BI Desktop.
