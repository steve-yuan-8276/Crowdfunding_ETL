# Crowdfunding_ETL(mini project)

For the ETL mini project, you will work with an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After  transform the data, create four CSV files and use the CSV file data to create an ERD and a table schema. Finally,  upload the CSV file data into a Postgres database.

## Directory Structure
```
    Crowdfunding_ETL(mini project)/
    ├── Resources/
    │   ├── contacts.xlsx
    │   └── crowdfunding.xlsx
    ├── Outputs/
    │   ├── category.csv
    │   ├── subcategory.csv
    │   ├── campaign.csv
    │   ├── contact_V1.csv
    │   └── contacts_v2.csv
    ├── ERD/
    │   ├── schema.md
    │   ├── QuickDBD-Map.png
    │   ├── crowdfunding_db_schema.sql
    │   └── SELECT_Query.sql
    ├── SQL_Query_ScreenShots/
    │   ├── category_query_screenshot.png
    │   ├── subcategory_query_screenshot.png
    │   ├── contacts_query_screenshot.png
    │   └── campaign_query_screenshot.png
    ├── ETL_Mini_Project_FYuan.ipynb
    └── README.md
```
## Sulution:

### Step 1: Finished ETL, Create 4 DataFrame, and save them into csv files.

Sample:
* Category and Subcategory DataFrames.
  
![category DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/category_DataFrame.png)

* Campaign DataFrame.
  
![subcategory DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/subcategory_DataFrame.png)

*  Crowdfunding Database.
  
![final contact DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/contact_DataFrame_final.png)

* Contacts DataFrame.

![campaign DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/campaign_DataFrame.png)


### Step2: Create the Crowdfunding Database

1. Inspect the four CSV files, and then sketch an ERD of the tables by using [QuickDBD](http://www.quickdatabasediagrams.com).

2. Use the information from the ERD to create a table schema for each CSV file.
  

3. Save the database schema as a Postgres file named `crowdfunding_db_schema.sql`, and save it to your GitHub repository.


4. Create a new Postgres database, named `crowdfunding_db`.

 
5. Using the database schema, create the tables in the correct order to handle the foreign keys.


6. Verify the table creation by running a `SELECT` statement for each table.


7. Import each CSV file into its corresponding SQL table.


8. Verify that each table has the correct data by running a `SELECT` statement for each.