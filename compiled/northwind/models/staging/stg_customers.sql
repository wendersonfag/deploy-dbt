-- models/staging/stg_customers.sql

--Imports
with sources as (
    select * from "northwind_lhmo"."public"."raw_customers"
),
-- Logica e tratamento 
renamed_and_cleaning as (
select
    customer_id,
    company_name,
    contact_name,
    contact_title,
    address,
    city,
    region,
    postal_code,
    country,
    phone,
    fax
from
    sources
)

-- Query
SELECT *
FROM
    renamed_and_cleaning