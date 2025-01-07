# Crowdfunding ETL Project 2

## Overview

This project involves creating an ETL (Extract, Transform, Load) pipeline for processing crowdfunding data. The goal is to extract data from Excel files, transform it into structured dataframes, and load it into a PostgreSQL database. The project is divided into several tasks, as outlined below.

---

## Project Files

- `ETL_Mini_Project_FINAL.ipynb`: The final Jupyter notebook where the ETL process will be implemented.
- `crowdfunding_db_schema.sql`: SQL schema for the database.
- `Resources/`: Folder containing the Excel, CSV files, Crowdfunding_ERD_QuickDBD PNG Diagram.
- `Starter_Code_Notebooks/`: Folder containing the individual starter code files.
- `category.csv`: Transformed data for campaign categories.
- `subcategory.csv`: Transformed data for campaign subcategories.
- `campaign.csv`: Transformed data for campaign details.
- `contacts.csv`: Transformed data for contacts.
- `crowdfunding.xlsx`: Contains the crowdfunding campaign data.
- `contacts.xlsx`: Contains the contact information.


---

## Instructions

### 1. Repository Setup
1. Create a new repository named `Crowdfunding_ETL` and add your partner as a collaborator.
2. Clone the repository to your local machine.
3. Add the `ETL_Mini_Project_starter_code.ipynb` file and rename it using the first initial and last name of each group member, e.g., `ETL_Mini_Project_NRomanoff_JSmith.ipynb`. Both files found in `Starter_Code_Notebooks` folder.
4. Add the `Resources` folder containing the provided `crowdfunding.xlsx` and `contacts.xlsx` files.
5. Push these changes to GitHub and have your partner pull them.

---

### 2. ETL Process

#### **A. Create the Category and Subcategory DataFrames**
1. Extract and transform data from `crowdfunding.xlsx` to create:
   - **Category DataFrame**:
     - Columns: `category_id` (e.g., "cat1", "cat2"), `category`.
     - Save as `category.csv`.
   - **Subcategory DataFrame**:
     - Columns: `subcategory_id` (e.g., "subcat1", "subcat2"), `subcategory`.
     - Save as `subcategory.csv`.

#### **B. Create the Campaign DataFrame**
1. Extract and transform data from `crowdfunding.xlsx` to create the Campaign DataFrame with the following columns:
   - `cf_id`, `contact_id`, `company_name`, `description`, `goal` (float), `pledged` (float), `outcome`, `backers_count`, `country`, `currency`, `launch_date` (datetime), `end_date` (datetime), `category_id`, `subcategory_id`.
2. Save the DataFrame as `campaign.csv`.

#### **C. Create the Contacts DataFrame**
Choose one of the following methods to process `contacts.xlsx`:

- **Option 1: Using Python Dictionaries**
  - Extract, clean, and split the `name` column into `first_name` and `last_name`.
  - Create a cleaned DataFrame and save as `contacts.csv`.

#### **D. Create the Crowdfunding Database**
1. Inspect the CSV files and create an ERD using [QuickDBD](https://www.quickdatabasediagrams.com/).
2. Define a PostgreSQL schema (`crowdfunding_db_schema.sql`) specifying:
   - Table structure, data types, primary keys, foreign keys, and constraints.
3. Create a new PostgreSQL database named `crowdfunding_db`.
4. Use the schema to create tables in the correct order to handle foreign keys.
5. Import data from the CSV files into their respective tables.
6. Verify the data with `SELECT` statements.

---

## Deliverables
1. Transformed CSV files and ERD Diagram found in `Resources/`:
   - `category.csv`
   - `subcategory.csv`
   - `campaign.csv`
   - `contacts.csv`
   - `Crowdfunding_ERD_QuickDBD.png`
   - 2. Database schema file: `crowdfunding_db_schema.sql`.
3. Final Jupyter notebook: `ETL_Mini_Project_FINAL.ipynb`.

---

## Tools and Technologies
- **Python**: pandas, datetime, json.
- **PostgreSQL**: Database creation and management.
- **Jupyter Notebook**: For the ETL pipeline development.
- **QuickDBD**: For ERD creation.

---

## Setup and Execution
1. Clone the repository to your local machine.
2. Open the Jupyter notebook and follow the instructions to execute the ETL pipeline.
3. Ensure all CSV files are saved and match the specified format.
4. Import the transformed data into the PostgreSQL database using the schema file.
5. Verify database contents with SQL queries.

---

## Team Members
- Kathy Nguyen
- Anh Pham
