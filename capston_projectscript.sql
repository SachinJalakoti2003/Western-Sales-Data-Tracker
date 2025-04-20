Create database capstoneproject;

use capstoneproject;


create table financial_data(Segment VARCHAR(50),
    Country VARCHAR(50),
    Product VARCHAR(50),
    Discount_Band VARCHAR(50),
    Units_Sold FLOAT,
    Manufacturing_Price FLOAT,
    Sale_Price FLOAT,
    Gross_Sales FLOAT,
    Discounts FLOAT,
    Sales FLOAT,
    COGS FLOAT,
    Profit FLOAT,
    Sale_Date DATE,
    Month_Number INT,
    Month_Name VARCHAR(20),
    Year INT
);

select *from financial_data;

SELECT COUNT(*) FROM financial_data;


-- Product wise sales
SELECT Product , SUM(Units_Sold) AS total_unit_sold
FROM financial_data
GROUP BY Product
ORDER BY total_unit_sold DESC;

-- Country wise sales
SELECT Country, SUM(Units_Sold) AS total_unit_sold
FROM financial_data
GROUP BY Country
ORDER BY total_unit_sold ASC;

-- Profit of sales by Quarter
SELECT QUARTER(Sale_Date) AS quarter, SUM(Profit) AS total_profit, SUM(Units_Sold) AS total_sales
FROM financial_data
GROUP BY quarter
ORDER BY quarter;
