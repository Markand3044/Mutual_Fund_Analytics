# Data Dictionary – Bluestock Mutual Fund Analytics Platform

## Overview

This document provides a detailed description of all datasets, tables, columns, and data types used in the Bluestock Mutual Fund Analytics Platform. The database was designed using a star-schema-inspired architecture and implemented in Microsoft SQL Server 2022.

---

# Database Information

**Database Name:** Bluestock_MF

**Database Type:** Microsoft SQL Server 2022

**Schema Design:** Star Schema (Dimension and Fact Tables)

**Total Tables:** 10

---

# Table: dim_fund

**Description:** Master table containing metadata for all mutual fund schemes.

| Column Name        | Data Type    | Description                                |
| ------------------ | ------------ | ------------------------------------------ |
| amfi_code          | INT          | Unique AMFI scheme identifier              |
| fund_house         | VARCHAR(100) | Name of the Asset Management Company (AMC) |
| scheme_name        | VARCHAR(300) | Official mutual fund scheme name           |
| category           | VARCHAR(50)  | Broad fund category (Equity, Debt, Hybrid) |
| sub_category       | VARCHAR(50)  | Detailed category classification           |
| plane              | VARCHAR(20)  | Plan type (Regular or Direct)              |
| launch_date        | DATE         | Scheme launch date                         |
| benchmark          | VARCHAR(200) | Benchmark index used for comparison        |
| expense_ratio_pct  | DECIMAL(5,2) | Annual expense ratio (%)                   |
| exit_load_pct      | DECIMAL(5,2) | Exit load percentage                       |
| min_sip_amount     | INT          | Minimum SIP investment amount              |
| min_lumpsum_amount | INT          | Minimum lump-sum investment amount         |
| fund_manager       | VARCHAR(100) | Primary fund manager                       |
| risk_category      | VARCHAR(50)  | Risk classification                        |
| sebi_category_code | VARCHAR(20)  | SEBI category code                         |

---

# Table: fact_nav

**Description:** Daily Net Asset Value (NAV) history for all mutual fund schemes.

| Column Name | Data Type     | Description           |
| ----------- | ------------- | --------------------- |
| nav_id      | INT           | Surrogate primary key |
| amfi_code   | INT           | Fund identifier       |
| nav_date    | DATE          | NAV date              |
| nav         | DECIMAL(18,4) | Daily NAV value       |

---

# Table: fact_aum

**Description:** Quarterly Assets Under Management (AUM) statistics by fund house.

| Column Name    | Data Type     | Description              |
| -------------- | ------------- | ------------------------ |
| aum_id         | INT           | Surrogate primary key    |
| aum_date       | DATE          | Reporting date           |
| fund_house     | VARCHAR(100)  | Fund house name          |
| aum_lakh_crore | DECIMAL(12,2) | AUM in lakh crore        |
| aum_crore      | BIGINT        | AUM in crore             |
| num_schemes    | INT           | Number of active schemes |

---

# Table: fact_sip_industry

**Description:** Industry-wide SIP inflow statistics.

| Column Name               | Data Type     | Description                          |
| ------------------------- | ------------- | ------------------------------------ |
| sip_id                    | INT           | Surrogate primary key                |
| month                     | VARCHAR(10)   | Reporting month (YYYY-MM)            |
| sip_inflow_crore          | BIGINT        | Monthly SIP inflow                   |
| active_sip_accounts_crore | DECIMAL(10,2) | Active SIP accounts                  |
| new_sip_accounts_lakh     | DECIMAL(10,2) | New SIP registrations                |
| sip_aum_lakh_crore        | DECIMAL(10,2) | SIP AUM                              |
| yoy_growth_pct            | DECIMAL(10,2) | Year-over-Year SIP growth percentage |

---

# Table: fact_category_inflows

**Description:** Monthly net inflows by mutual fund category.

| Column Name      | Data Type     | Description           |
| ---------------- | ------------- | --------------------- |
| category_flow_id | INT           | Surrogate primary key |
| month            | VARCHAR(10)   | Reporting month       |
| category         | VARCHAR(100)  | Fund category         |
| net_inflow_crore | DECIMAL(15,2) | Net inflow amount     |

---

# Table: fact_folio_count

**Description:** Industry folio growth statistics.

| Column Name         | Data Type     | Description           |
| ------------------- | ------------- | --------------------- |
| folio_id            | INT           | Surrogate primary key |
| month               | VARCHAR(10)   | Reporting month       |
| total_folios_crore  | DECIMAL(10,2) | Total folios          |
| equity_folios_crore | DECIMAL(10,2) | Equity folios         |
| debt_folios_crore   | DECIMAL(10,2) | Debt folios           |
| hybrid_folios_crore | DECIMAL(10,2) | Hybrid folios         |
| others_folios_crore | DECIMAL(10,2) | Other folios          |

---

# Table: fact_performance

**Description:** Fund performance and risk metrics.

| Column Name        | Data Type     | Description                   |
| ------------------ | ------------- | ----------------------------- |
| performance_id     | INT           | Surrogate primary key         |
| amfi_code          | INT           | Fund identifier               |
| scheme_name        | VARCHAR(300)  | Scheme name                   |
| fund_house         | VARCHAR(100)  | AMC name                      |
| category           | VARCHAR(50)   | Fund category                 |
| plane              | VARCHAR(20)   | Plan type                     |
| return_1yr_pct     | DECIMAL(10,2) | One-year return               |
| return_3yr_pct     | DECIMAL(10,2) | Three-year CAGR               |
| return_5yr_pct     | DECIMAL(10,2) | Five-year CAGR                |
| benchmark_3yr_pct  | DECIMAL(10,2) | Benchmark return              |
| alpha              | DECIMAL(10,2) | Excess return over benchmark  |
| beta               | DECIMAL(10,2) | Market sensitivity            |
| sharpe_ratio       | DECIMAL(10,2) | Risk-adjusted return          |
| sortino_ratio      | DECIMAL(10,2) | Downside risk-adjusted return |
| std_dev_ann_pct    | DECIMAL(10,2) | Annualized volatility         |
| max_drawdown_pct   | DECIMAL(10,2) | Maximum drawdown              |
| aum_crore          | BIGINT        | Scheme AUM                    |
| expense_ratio_pct  | DECIMAL(10,2) | Expense ratio                 |
| morningstar_rating | INT           | Morningstar rating            |
| risk_grade         | VARCHAR(50)   | Risk classification           |

---

# Table: fact_transactions

**Description:** Investor transaction history.

| Column Name        | Data Type     | Description              |
| ------------------ | ------------- | ------------------------ |
| transaction_id     | INT           | Surrogate primary key    |
| investor_id        | VARCHAR(20)   | Investor identifier      |
| transaction_date   | DATE          | Transaction date         |
| amfi_code          | INT           | Fund identifier          |
| transaction_type   | VARCHAR(20)   | SIP, Lumpsum, Redemption |
| amount_inr         | BIGINT        | Transaction amount       |
| state              | VARCHAR(50)   | Investor state           |
| city               | VARCHAR(100)  | Investor city            |
| city_tier          | VARCHAR(20)   | T30/B30 classification   |
| age_group          | VARCHAR(20)   | Investor age group       |
| gender             | VARCHAR(20)   | Gender                   |
| annual_income_lakh | DECIMAL(10,2) | Annual income            |
| payment_mode       | VARCHAR(50)   | Payment channel          |
| kyc_status         | VARCHAR(20)   | KYC verification status  |

---

# Table: fact_portfolio

**Description:** Portfolio holdings of mutual fund schemes.

| Column Name       | Data Type     | Description              |
| ----------------- | ------------- | ------------------------ |
| holding_id        | INT           | Surrogate primary key    |
| amfi_code         | INT           | Fund identifier          |
| stock_symbol      | VARCHAR(50)   | Stock ticker             |
| stock_name        | VARCHAR(200)  | Company name             |
| sector            | VARCHAR(100)  | Industry sector          |
| weight_pct        | DECIMAL(10,2) | Portfolio allocation (%) |
| market_value_cr   | DECIMAL(15,2) | Market value in crore    |
| current_price_inr | DECIMAL(15,2) | Current stock price      |
| portfolio_date    | DATE          | Portfolio reporting date |

---

# Table: fact_benchmark

**Description:** Historical benchmark index values.

| Column Name    | Data Type     | Description           |
| -------------- | ------------- | --------------------- |
| benchmark_id   | INT           | Surrogate primary key |
| benchmark_date | DATE          | Trading date          |
| index_name     | VARCHAR(100)  | Benchmark index name  |
| close_value    | DECIMAL(18,2) | Closing index value   |

---

# Data Sources

* AMFI India
* mfapi.in
* NSE India
* BSE India
* Bluestock Fintech Capstone Datasets

---

# Prepared By

Bluestock Fintech Capstone Project
Mutual Fund Analytics Platform
Data Engineering • SQL • Power BI • Financial Analytics
