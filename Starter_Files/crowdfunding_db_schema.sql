CREATE DATABASE crowdfunding_db;

CREATE TABLE contacts (
  contact_id INTEGER NOT NULL PRIMARY KEY,
  first_name VARCHAR(64) NOT NULL ,
  last_name VARCHAR(64) NOT NULL ,
  email VARCHAR(64) NOT NULL
);

CREATE TABLE category (
  category_id VARCHAR(64) NOT NULL PRIMARY KEY,
  category VARCHAR(64) NOT NULL
);

CREATE TABLE subcategory (
  subcategory_id VARCHAR(64) NOT NULL PRIMARY KEY,
  subcategory VARCHAR(64) NOT NULL
);

CREATE TABLE campaign (
  cf_id INTEGER NOT NULL PRIMARY KEY,
  contact_id INTEGER NOT NULL ,
  company_name VARCHAR(64) NOT NULL ,
  description TEXT NOT NULL ,
  goal FLOAT NOT NULL ,
  pledged FLOAT NOT NULL ,
  outcome VARCHAR(64) NOT NULL ,
  backers_count INTEGER NOT NULL ,
  country VARCHAR(64) NOT NULL ,
  currency VARCHAR(64) NOT NULL ,
  launched_date DATE NOT NULL ,
  end_date DATE NOT NULL ,
  category_id VARCHAR(64) NOT NULL ,
  subcategory_id VARCHAR(64) NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "campaign_fk1" FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "campaign_fk2" FOREIGN KEY("category_id") REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "campaign_fk3" FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id");