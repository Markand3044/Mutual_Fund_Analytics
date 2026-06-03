# Mutual Fund Analytics Project

## Overview

This project is part of a Fintech Data Analyst Internship capstone project.

The project focuses on:

* Mutual fund data ingestion
* NAV data collection using APIs
* Data quality validation
* Financial dataset exploration
* AMFI scheme analysis

---

## Project Structure

```text
Mutual_Fund_Analysis/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
├── sql/
├── dashboard/
├── reports/
│
├── data_ingestion.py
├── live_nav_fetch.py
├── requirements.txt
├── README.md
└── .gitignore
```

---

## Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Plotly
* Requests
* SQLAlchemy
* Jupyter Notebook

---

## Tasks Completed

### Day 1

* Created project folder structure
* Loaded and explored 10 CSV datasets
* Printed shape, datatypes, and head of datasets
* Identified data anomalies
* Fetched live NAV data using mfapi.in API
* Saved NAV data as CSV
* Validated AMFI scheme codes
* Created data quality summary
* Initialized Git and pushed project to GitHub

---

## API Used

https://api.mfapi.in

---

## How to Run

### Install dependencies

```bash
pip install -r requirements.txt
```

### Run data ingestion

```bash
python data_ingestion.py
```

### Run NAV fetch script

```bash
python live_nav_fetch.py
```

---

## Author

Markand Vyas
