SELECT MAX(Price) AS Maximum_Price FROM Items
SELECT MAX(Cst_name) AS The_last_Customer FROM Customer
SELECT COUNT(*) AS [product number]FROM Suppliers WHERE Supp_id=16
SELECT AVG (DISTINCT hours)AS average FROM Store WHERE Store_id=63
SELECT MIN (Time) AS Minimum_Time FROM Bills 
SELECT DISTINCT Emp_name FROM Employees WHERE Address='Toros Mahallesi'
SELECT Item_name AS 'Item_id',SUM(price)AS 'Cst_id' FROM [Items] GROUP BY Item_name
SELECT *FROM Customer WHERE Customer.Bill_id in (SELECT Bills.Bill_id FROM Bills WHERE Bill_id LIKE '3%')
SELECT * FROM Items WHERE Item_id = (SELECT Item_id FROM Items WHERE Item_name= 'Suitcase')
SELECT *FROM Stock WHERE (Stock_id>=27 AND Stock_id<=30)  AND Quantity='15'
