# 📈 Mutual Fund Analytics Platform

A comprehensive Mutual Fund Analytics Platform built as part of the Bluestock Fintech Capstone Project. This project demonstrates end-to-end Data Engineering, ETL Pipeline Development, Financial Analytics, Risk Analysis, SQL Database Design, and Interactive Dashboard Creation using real-world mutual fund datasets.

---

## 🚀 Project Overview

The Mutual Fund Analytics Platform is designed to help investors, analysts, and financial professionals make informed investment decisions through data-driven insights.

The platform:

- Extracts mutual fund data from multiple public sources
- Cleans and transforms raw datasets using ETL pipelines
- Stores processed data in a relational database
- Computes performance and risk metrics
- Generates actionable insights through interactive dashboards

---

## 🎯 Project Objectives

- Build an automated ETL pipeline for mutual fund datasets
- Design a normalized SQL database schema
- Perform comprehensive exploratory data analysis (EDA)
- Compute fund performance metrics
- Calculate risk-adjusted returns
- Analyze investor behavior patterns
- Compare fund performance against benchmark indices
- Create an interactive Power BI dashboard

---

## 📊 Key Features

### Data Engineering
- Automated ETL Pipeline
- Data Validation & Cleaning
- API Data Ingestion
- SQL Database Integration

### Financial Analytics
- CAGR Analysis
- Alpha & Beta Calculation
- Sharpe Ratio
- Sortino Ratio
- Maximum Drawdown
- Value at Risk (VaR)
- Conditional Value at Risk (CVaR)

### Investor Analytics
- SIP Trend Analysis
- Investor Demographics
- Geographic Distribution Analysis
- Cohort Analysis
- Transaction Pattern Analysis

### Dashboard & Reporting
- Industry Overview Dashboard
- Fund Performance Dashboard
- Investor Analytics Dashboard
- SIP & Market Trends Dashboard

---

## 🏗️ System Architecture

```text
Public Data Sources
       │
       ▼
   ETL Pipeline
(Python + Pandas)
       │
       ▼
 Data Cleaning &
 Transformation
       │
       ▼
 SQLite Database
       │
       ▼
 Analytics Engine
       │
       ▼
 Power BI Dashboard
```

---

## 📂 Project Structure

```bash
bluestock_mf_capstone/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── db/
│
├── notebooks/
│   ├── 01_data_ingestion.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_eda_analysis.ipynb
│   ├── 04_performance_analytics.ipynb
│   └── 05_advanced_analytics.ipynb
│
├── scripts/
│   ├── etl_pipeline.py
│   ├── live_nav_fetch.py
│   ├── compute_metrics.py
│   └── recommender.py
│
├── sql/
│   ├── schema.sql
│   └── queries.sql
│
├── dashboard/
│   └── bluestock_mf_dashboard.pbix
│
├── reports/
│   ├── Final_Report.pdf
│   └── Presentation.pptx
│
├── requirements.txt
├── README.md
└── run_pipeline.py
```

---

## 📊 Datasets Used

| Dataset | Description |
|----------|------------|
| fund_master.csv | Mutual Fund Master Data |
| nav_history.csv | Historical NAV Data |
| aum_by_fund_house.csv | Fund House AUM |
| monthly_sip_inflows.csv | SIP Trends |
| category_inflows.csv | Category-wise Fund Flows |
| industry_folio_count.csv | Industry Folio Data |
| scheme_performance.csv | Fund Performance Metrics |
| investor_transactions.csv | Investor Transactions |
| portfolio_holdings.csv | Portfolio Holdings |
| benchmark_indices.csv | Market Benchmark Data |

---

## 🛠️ Technology Stack

### Programming Language
- Python 3.10+

### Data Analysis
- Pandas
- NumPy
- SciPy

### Visualization
- Matplotlib
- Seaborn
- Plotly

### Database
- SQLServer

### Dashboard
- Power BI
- Tableau

### Development Tools
- Git
- GitHub
- Jupyter Notebook
- VS Code

---

## 📈 Performance Metrics Calculated

### Return Metrics
- 1-Year Return
- 3-Year CAGR
- 5-Year CAGR

### Risk Metrics
- Sharpe Ratio
- Sortino Ratio
- Alpha
- Beta
- Standard Deviation
- Maximum Drawdown
- VaR
- CVaR

---

## 📊 Dashboard Pages

### 1. Industry Overview
- Total AUM
- SIP Inflows
- Folio Count
- AMC Market Share

### 2. Fund Performance
- Risk vs Return Analysis
- Fund Rankings
- Benchmark Comparison

### 3. Investor Analytics
- Demographics
- State-wise Analysis
- Transaction Trends

### 4. SIP & Market Trends
- SIP Growth Analysis
- Category Inflows
- Market Benchmark Trends

---


## 📋 Project Deliverables

- ETL Pipeline
- SQLite Database
- EDA Notebook
- Performance Analytics Module
- Advanced Analytics Module
- Interactive Dashboard
- Final Report
- Project Presentation

---

## 🔥 Future Enhancements

- Streamlit Web Application
- Automated Daily Data Refresh
- Portfolio Optimization Module
- Monte Carlo Simulation
- Email Reporting System
- Cloud Deployment

---

## 👨‍💻 Author

**Markand Vyas**

Data Analyst Intern – Bluestock Fintech

GitHub: https://github.com/Markand3044

---

## ⚠️ Disclaimer

This project is created for educational and analytical purposes only.

Mutual fund investments are subject to market risks. The information and analysis provided in this project should not be considered financial advice.

---

## ⭐ Support

If you found this project useful, please give this repository a ⭐ on GitHub.
