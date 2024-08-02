campaign
-
cf_id int PK
contact_id int FK >- contacts.contact_id
company_name varchar(255)
description text
goal float
pledged float
outcome varchar(10)
backer_count int
country varchar(2)
currency varchar(3)
launched_date date
end_date date
category_id varchar(4) FK >- category.category_id 
subcategory_id varchar(10) FK >- subcategory.subcategory_id

contacts
-
contact_id int PK
first_name varchar(50)
last_name varchar(50)
email varchar(254)

category
-
category_id varchar(4) PK
category varchar(20)

subcategory
-
subcategory_id varchar(10) PK
subcategory varchar(30)
