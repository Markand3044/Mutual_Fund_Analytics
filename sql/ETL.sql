USE Bluestock_MF;
GO


DROP TABLE IF EXISTS dim_fund;
CREATE TABLE dim_fund (
    amfi_code INT PRIMARY KEY,
    fund_house VARCHAR(100),
    scheme_name VARCHAR(300),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    plane VARCHAR(20),
    launch_date DATE,
    benchmark VARCHAR(200),
    expense_ratio_pct DECIMAL(5,2),
    exit_load_pct DECIMAL(5,2),
    min_sip_amount INT,
    min_lumpsum_amount INT,
    fund_manager VARCHAR(100),
    risk_category VARCHAR(50),
    sebi_category_code VARCHAR(20)
);

DROP TABLE IF EXISTS fact_nav;
CREATE TABLE fact_nav (
    nav_id INT IDENTITY(1,1) PRIMARY KEY,
    amfi_code INT,
    nav_date DATE,
    nav DECIMAL(18,4),
    FOREIGN KEY (amfi_code)
    REFERENCES dim_fund(amfi_code)
);

DROP TABLE IF EXISTS fact_transactions;
CREATE TABLE fact_transactions (
    transaction_id INT IDENTITY(1,1) PRIMARY KEY,
    investor_id VARCHAR(20),
    transaction_date DATE,
    amfi_code INT,
    transaction_type VARCHAR(20),
    amount_inr BIGINT,
    state VARCHAR(50),
    city VARCHAR(100),
    city_tier VARCHAR(20),
    age_group VARCHAR(20),
    gender VARCHAR(20),
    annual_income_lakh DECIMAL(10,2),
    payment_mode VARCHAR(50),
    kyc_status VARCHAR(20),
    FOREIGN KEY (amfi_code)
    REFERENCES dim_fund(amfi_code)
);

DROP TABLE IF EXISTS fact_performance;
CREATE TABLE fact_performance (
    performance_id INT IDENTITY(1,1) PRIMARY KEY,
    amfi_code INT,
    scheme_name VARCHAR(300),
    fund_house VARCHAR(100),
    category VARCHAR(50),
    plane VARCHAR(20),
    return_1yr_pct DECIMAL(10,2),
    return_3yr_pct DECIMAL(10,2),
    return_5yr_pct DECIMAL(10,2),
    benchmark_3yr_pct DECIMAL(10,2),
    alpha DECIMAL(10,2),
    beta DECIMAL(10,2),
    sharpe_ratio DECIMAL(10,2),
    sortino_ratio DECIMAL(10,2),
    std_dev_ann_pct DECIMAL(10,2),
    max_drawdown_pct DECIMAL(10,2),
    aum_crore BIGINT,
    expense_ratio_pct DECIMAL(10,2),
    morningstar_rating INT,
    risk_grade VARCHAR(50),
    FOREIGN KEY (amfi_code)
    REFERENCES dim_fund(amfi_code)
);

DROP TABLE IF EXISTS fact_aum;
CREATE TABLE fact_aum (
    aum_id INT IDENTITY(1,1) PRIMARY KEY,
    aum_date DATE,
    fund_house VARCHAR(100),
    aum_lakh_crore DECIMAL(12,2),
    aum_crore BIGINT,
    num_schemes INT
);

DROP TABLE IF EXISTS fact_sip_industry;
CREATE TABLE fact_sip_industry (
    sip_id INT IDENTITY(1,1) PRIMARY KEY,
    month VARCHAR(10),
    sip_inflow_crore BIGINT,
    active_sip_accounts_crore DECIMAL(10,2),
    new_sip_accounts_lakh DECIMAL(10,2),
    sip_aum_lakh_crore DECIMAL(10,2),
    yoy_growth_pct DECIMAL(10,2)
);

DROP TABLE IF EXISTS fact_portfolio;
CREATE TABLE fact_portfolio (
    holding_id INT IDENTITY(1,1) PRIMARY KEY,
    amfi_code INT,
    stock_symbol VARCHAR(50),
    stock_name VARCHAR(200),
    sector VARCHAR(100),
    weight_pct DECIMAL(10,2),
    market_value_cr DECIMAL(15,2),
    current_price_inr DECIMAL(15,2),
    portfolio_date DATE,
    FOREIGN KEY (amfi_code)
    REFERENCES dim_fund(amfi_code)
);

DROP TABLE IF EXISTS fact_category_inflows;
CREATE TABLE fact_category_inflows (
    category_flow_id INT IDENTITY(1,1) PRIMARY KEY,
    month VARCHAR(10),
    category VARCHAR(100),
    net_inflow_crore DECIMAL(15,2)
);

DROP TABLE IF EXISTS fact_folio_count;
CREATE TABLE fact_folio_count (
    folio_id INT IDENTITY(1,1) PRIMARY KEY,
    month VARCHAR(10),
    total_folios_crore DECIMAL(10,2),
    equity_folios_crore DECIMAL(10,2),
    debt_folios_crore DECIMAL(10,2),
    hybrid_folios_crore DECIMAL(10,2),
    others_folios_crore DECIMAL(10,2)
);

DROP TABLE IF EXISTS fact_benchmark;
CREATE TABLE fact_benchmark (
    benchmark_id INT IDENTITY(1,1) PRIMARY KEY,
    benchmark_date DATE,
    index_name VARCHAR(100),
    close_value DECIMAL(18,2)
);

SELECT COUNT(*) FROM dim_fund;
SELECT COUNT(*) FROM fact_nav;
SELECT COUNT(*) FROM fact_aum;
SELECT COUNT(*) FROM fact_sip_industry;
SELECT COUNT(*) FROM fact_category_inflows;
SELECT COUNT(*) FROM fact_folio_count;
SELECT COUNT(*) FROM fact_performance;
SELECT COUNT(*) FROM fact_transactions;
SELECT COUNT(*) FROM fact_portfolio;
SELECT COUNT(*) FROM fact_benchmark;
