/*1. Total Sales per Year/Month*/

SELECT 
    YEAR(o.order_date) AS Year,
    MONTH(o.order_date) AS Month,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS TotalSales
FROM 
    sales.orders o
JOIN 
    sales.order_items oi ON o.order_id = oi.order_id
GROUP BY 
    YEAR(o.order_date), MONTH(o.order_date)
ORDER BY 
    Year, Month;


/*2. Total Sales per Store/Employee */

SELECT 
    s.store_name,
    st.first_name + ' ' + st.last_name AS employee_name,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS TotalSales
FROM 
    sales.orders o
JOIN 
    sales.order_items oi ON o.order_id = oi.order_id
JOIN 
    sales.stores s ON o.store_id = s.store_id
JOIN 
    sales.staffs st ON o.staff_id = st.staff_id
GROUP BY 
    s.store_name, st.first_name + ' ' + st.last_name
ORDER BY 
    TotalSales DESC;

/*3. Top Selling Brands and Categories*/

SELECT 
    c.category_name,
    b.brand_name,
    p.product_name,
    SUM(oi.quantity) AS UnitsSold,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS Revenue
FROM 
    production.products p
JOIN 
    production.categories c ON p.category_id = c.category_id
JOIN 
    production.brands b ON p.brand_id = b.brand_id
JOIN 
    sales.order_items oi ON p.product_id = oi.product_id
GROUP BY 
    c.category_name, b.brand_name, p.product_name
ORDER BY 
    Revenue DESC;

/*4. Impact of Discounts on Revenue*/

SELECT 
    YEAR(o.order_date) AS Year,
    MONTH(o.order_date) AS Month,
    SUM(oi.quantity * oi.list_price * oi.discount) AS DiscountAmount,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS NetRevenue
FROM 
    sales.orders o
JOIN 
    sales.order_items oi ON o.order_id = oi.order_id
GROUP BY 
    YEAR(o.order_date), MONTH(o.order_date)
ORDER BY 
    Year, Month;

/*5. Total spent by each customer*/
SELECT 
    c.first_name + ' ' + c.last_name AS customer_name,
    c.city,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS TotalSpent
FROM 
    sales.customers c
JOIN 
    sales.orders o ON c.customer_id = o.customer_id
JOIN 
    sales.order_items oi ON o.order_id = oi.order_id
GROUP BY 
    c.first_name + ' ' + c.last_name, c.city
ORDER BY 
    TotalSpent DESC;

/*6. Average Order Value Over Time*/
SELECT 
    YEAR(o.order_date) AS Year,
    MONTH(o.order_date) AS Month,
    AVG(oi.quantity * oi.list_price * (1 - oi.discount)) AS AvgOrderValue
FROM 
    sales.orders o
JOIN 
    sales.order_items oi ON o.order_id = oi.order_id
GROUP BY 
    YEAR(o.order_date), MONTH(o.order_date)
ORDER BY 
    Year, Month;

/*7. Sales by Store Location*/

SELECT 
    s.city,
    s.state,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS TotalSales
FROM 
    sales.orders o
JOIN 
    sales.order_items oi ON o.order_id = oi.order_id
JOIN 
    sales.stores s ON o.store_id = s.store_id
GROUP BY 
    s.city, s.state
ORDER BY 
    TotalSales DESC;