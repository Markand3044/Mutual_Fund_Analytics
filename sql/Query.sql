USE Bluestock_MF;
GO

-- Top 5 Fund Houses by AUM
SELECT TOP 5
    fund_house,
    MAX(aum_crore) AS max_aum_crore
FROM fact_aum
GROUP BY fund_house
ORDER BY max_aum_crore DESC;

-- Top 5 Fund Houses by AUM
SELECT
    amfi_code,
    AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY avg_nav DESC;

-- SIP Inflow Trend
SELECT
    month,
    sip_inflow_crore,
    yoy_growth_pct
FROM fact_sip_industry
ORDER BY month;

-- Transactions by State
SELECT
    state,
    COUNT(*) AS total_transactions
FROM fact_transactions
GROUP BY state
ORDER BY total_transactions DESC;

-- Top 10 States by Investment Amount
SELECT TOP 10
    state,
    SUM(amount_inr) AS total_invested
FROM fact_transactions
GROUP BY state
ORDER BY total_invested DESC;

-- KYC Status Analysis
SELECT
    kyc_status,
    COUNT(*) AS investors
FROM fact_transactions
GROUP BY kyc_status;

-- Highest Sharpe Ratio Funds
SELECT TOP 10
    scheme_name,
    sharpe_ratio
FROM fact_performance
ORDER BY sharpe_ratio DESC;

-- Best 3-Year Return Funds
SELECT TOP 10
    scheme_name,
    return_3yr_pct
FROM fact_performance
ORDER BY return_3yr_pct DESC;

-- Category-wise Net Inflows
SELECT
    category,
    SUM(net_inflow_crore) AS total_inflow
FROM fact_category_inflows
GROUP BY category
ORDER BY total_inflow DESC;

-- Sector Allocation
SELECT
    sector,
    SUM(weight_pct) AS total_weight
FROM fact_portfolio
GROUP BY sector
ORDER BY total_weight DESC;

