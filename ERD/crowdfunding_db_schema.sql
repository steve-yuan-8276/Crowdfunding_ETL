﻿-- Create the campaign table
CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(255) NOT NULL,
    description text NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar(10) NOT NULL,
    backer_count int NOT NULL,
    country varchar(2) NOT NULL,
    currency varchar(3) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(4) NOT NULL,
    subcategory_id varchar(10) NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (cf_id)
);

-- Create the contacts table
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(254) NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (contact_id)
);

-- Create the category table
CREATE TABLE category (
    category_id varchar(4) NOT NULL,
    category varchar(20) NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id)
);

-- Create the subcategory table
CREATE TABLE subcategory (
    subcategory_id varchar(10) NOT NULL,
    subcategory varchar(30) NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);

-- Add foreign key constraint to campaign for contact_id
ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

-- Add foreign key constraint to campaign for category_id
ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

-- Add foreign key constraint to campaign for subcategory_id
ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

