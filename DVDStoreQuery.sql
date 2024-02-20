SELECT 
Customers.first_name, 
Customers.last_name, 
DATEDIFF(day, CAST(DVD.borrow_date AS DATE), GETDATE()) AS count_days 
FROM DVD LEFT JOIN Customers ON DVD.customer_id = Customers.id 
WHERE DVD.return_date IS NULL;

UPDATE DVD
SET return_date = GETDATE()
WHERE return_date IS NULL;