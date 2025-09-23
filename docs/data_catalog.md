# Data Catalog for Gold Layer

## Overview
The **Gold Layer** represents business-level data designed to support analytical and reporting use cases. It consists of **dimension tables** and **fact tables** 
that store business metrics and descriptive attributes.

---

## 1. `gold.dim_customers`
**Purpose:**  
Stores customer information enriched with demographic and geographic attributes.

**Columns:**

| Column Name     | Data Type     | Description                                                                                   |
|-----------------|---------------|-----------------------------------------------------------------------------------------------|
| `customer_key`  | INT           | Surrogate key uniquely identifying each customer in the dimension table.                       |
| `customer_id`   | INT           | Natural identifier assigned to each customer in the source system.                             |
| `customer_number`| NVARCHAR(50) | Alphanumeric identifier representing the customer, used for tracking and referencing.          |
| `first_name`    | NVARCHAR(50)  | Customer's first name.                                                                         |
| `last_name`     | NVARCHAR(50)  | Customer's last name or family name.                                                           |
| `country`       | NVARCHAR(50)  | Customer's country of residence (e.g., 'Australia').                                           |
| `marital_status`| NVARCHAR(50)  | Marital status of the customer (e.g., 'Married', 'Single').                                     |
| `gender`        | NVARCHAR(50)  | Gender of the customer (e.g., 'Male', 'Female', 'N/A').                                         |
| `birthdate`     | DATE          | Date of birth (YYYY-MM-DD).                                                                    |
| `create_date`   | DATE          | Date when the customer record was created in the system.                                       |

---

## 2. `gold.dim_products`
**Purpose:**  
Holds information about products and their attributes.

**Columns:**

| Column Name          | Data Type     | Description                                                                                  |
|----------------------|---------------|----------------------------------------------------------------------------------------------|
| `product_key`        | INT           | Surrogate key uniquely identifying each product in the dimension table.                      |
| `product_id`         | INT           | Natural identifier assigned to each product in the source system.                            |
| `product_number`     | NVARCHAR(50)  | Alphanumeric code representing the product, used for categorization or inventory.            |
| `product_name`       | NVARCHAR(50)  | Descriptive name of the product, including type, color, and size.                            |
| `category_id`        | NVARCHAR(50)  | Identifier for the product's category, linking to its high-level classification.             |
| `category`           | NVARCHAR(50)  | Broader classification of the product (e.g., 'Bikes', 'Components').                        |
| `subcategory`        | NVARCHAR(50)  | More detailed classification within the category.                                            |
| `maintenance_required`| NVARCHAR(50) | Indicates whether the product requires maintenance (e.g., 'Yes', 'No').                      |
| `cost`               | INT           | Cost or base price of the product in monetary units.                                         |
| `product_line`       | NVARCHAR(50)  | Specific product line or series to which the product belongs (e.g., 'Road', 'Mountain').     |
| `start_date`         | DATE          | Date when the product became available for sale or use.                                      |

---

## 3. `gold.fact_sales`
**Purpose:**  
Stores transactional sales data for analytical and reporting purposes.

**Columns:**

| Column Name    | Data Type     | Description                                                                                   |
|----------------|---------------|-----------------------------------------------------------------------------------------------|
| `order_number` | NVARCHAR(50)  | Unique alphanumeric identifier for each sales order (e.g., 'SO54496').                        |
| `product_key`  | INT           | Surrogate key linking the order to the product dimension table.                               |
| `customer_key` | INT           | Surrogate key linking the order to the customer dimension table.                              |
| `order_date`   | DATE          | Date when the order was placed.                                                               |
| `shipping_date`| DATE          | Date when the order was shipped to the customer.                                              |
| `due_date`     | DATE          | Date when the order payment was due.                                                          |
| `sales_amount` | INT           | Total monetary value of the sale for the line item (e.g., 25).                                 |
| `quantity`     | INT           | Number of product units ordered for the line item (e.g., 1).                                   |
| `price`        | INT           | Price per unit of the product for the line item (e.g., 25).                                    |
