# SQL Data Warehouse Project

## 📖 Overview
This project implements a **data warehouse** using a layered architecture:
- **Bronze Layer** – Raw source data as loaded from external systems.
- **Silver Layer** – Cleaned, transformed, and standardized data.
- **Gold Layer** – Business-level data model (dimensions & facts) for analytics and reporting.

It demonstrates ETL best practices, data cleansing, and dimensional modeling using SQL Server.

---

## 🏗️ Architecture
<img width="1031" height="600" alt="high_level_architecture" src="https://github.com/user-attachments/assets/7dd7831a-4132-43cf-8c4b-a7b78569dcc2" />

- **Bronze Layer**: Direct import of CSV files and other raw sources.
- **Silver Layer**: Business rules, data quality checks, deduplication, and transformations.
- **Gold Layer**: Final star schema with fact and dimension tables.

---

## 📂 Repository Structure

| Folder / File | Description |
|---------------|-------------|
| `datasets/` | Sample CSV files used to populate the Bronze layer. |
| `scripts/` | SQL scripts for ETL processes and table creation. |
| `docs/` | Project documentation (data catalogs, diagrams, etc.). |
| `tests/` | Optional test queries or scripts for data validation. |

---

## 🗂️ Data Model (Gold Layer)

- **`gold.dim_customers`** – Customer dimension with demographic attributes.
- **`gold.dim_products`** – Product dimension with category & attribute details.
- **`gold.fact_sales`** – Sales fact table linking customers and products.
    Full column definitions are documented in [`docs/data_catalog.md`](docs/data_catalog.md).

---

## 🚀 Getting Started

### Prerequisites
- Microsoft SQL Server (2019 or later recommended)
- SQL Server Management Studio (SSMS) or Azure Data Studio
- Sufficient disk/memory to load sample datasets

### Setup Steps
1. Clone this repository:
   ```bash
   git clone https://github.com/Islam-Almshamsheh/SQL-Data-Warehouse-Project.git  
  
