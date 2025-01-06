-- Step 1: Create the database
CREATE DATABASE crowdfunding_db;

-- Step 2: Connect to the database
-- Manually connect to the database using your tool or connection settings.

-- Step 3: Create the schema
-- Create the Contacts table
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY, -- Automatically generates unique IDs
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE -- Ensure unique email addresses
);

-- Create the Category table
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(100) NOT NULL UNIQUE 
);

-- Create the Subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(100) NOT NULL UNIQUE 
);

-- Create the Campaign table
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY, -- Automatically generates unique IDs
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal NUMERIC(15, 2) NOT NULL, -- Precise handling for monetary values
    pledged NUMERIC(15, 2) NOT NULL,
    outcome TEXT NOT NULL,
    backers_count INT NOT NULL,
    country TEXT NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    CONSTRAINT fk_campaign_contact FOREIGN KEY (contact_id) REFERENCES contacts (contact_id) ON DELETE CASCADE,
    CONSTRAINT fk_campaign_category FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE,
    CONSTRAINT fk_campaign_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id) ON DELETE CASCADE
);

-- Step 4: Add indexes for performance
CREATE INDEX idx_contacts_email ON contacts (email);
CREATE INDEX idx_campaign_category ON campaign (category_id);
CREATE INDEX idx_campaign_subcategory ON campaign (subcategory_id);
CREATE INDEX idx_campaign_contact ON campaign (contact_id);

--Step 5: Import CSV data in this order: category, contacts, subcategory and campaign.
--Make sure to populate the contacts, category, and subcategory tables before inserting data into the campaign table to avoid foreign key constraint violations.