USE chinook;

-- Q1: Find the senior most employee
SELECT *
FROM employee
WHERE reportsto IS NULL;

-- Q2: Country with the most invoices
SELECT BillingCountry, COUNT(*) AS total_invoice
FROM invoice
GROUP BY BillingCountry
ORDER BY total_invoice DESC
LIMIT 1;

-- Q3: Top 3 countries by invoice count
SELECT BillingCountry, COUNT(*) AS total_invoice
FROM invoice
GROUP BY BillingCountry
ORDER BY total_invoice DESC
LIMIT 3;

-- Q4: City with highest invoice total
SELECT BillingCity, SUM(Total) AS total
FROM invoice
GROUP BY BillingCity
ORDER BY total DESC
LIMIT 1;

-- Q5: Best customer by total spending
SELECT c.customerid, c.firstname, c.lastname, SUM(i.total) AS total
FROM customer c
JOIN invoice i ON c.customerid = i.customerid
GROUP BY c.customerid, c.firstname, c.lastname
ORDER BY total DESC
LIMIT 1;

-- Q6: Rock music listeners
SELECT DISTINCT c.firstname, c.lastname, c.email
FROM customer c
JOIN invoice i USING(customerid)
JOIN invoiceline il USING (invoiceid)
JOIN track t USING (trackid)
JOIN genre g USING (genreid)
WHERE g.name = 'Rock'
ORDER BY c.email;

-- Q7: Top 10 rock albums by track count
SELECT a.name AS artist, al.title, COUNT(t.trackid) AS track_count
FROM artist a
JOIN album al USING (artistid)
JOIN track t USING (albumid)
JOIN genre g USING (genreid)
WHERE g.name = 'Rock'
GROUP BY a.name, al.title
ORDER BY track_count DESC
LIMIT 10;

-- Q8: Tracks longer than average length
SELECT name, milliseconds
FROM track
WHERE milliseconds > (SELECT AVG(milliseconds) FROM track)
ORDER BY milliseconds DESC;

-- Q9: Amount spent by each customer on artists
SELECT c.customerid, c.firstname, a.name AS artist, SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i USING (customerid)
JOIN invoiceline il USING (invoiceid)
JOIN track t USING (trackid)
JOIN album al USING (albumid)
JOIN artist a USING (artistid)
GROUP BY c.customerid, c.firstname, a.name
ORDER BY total_spent DESC;

-- Q10: Most popular genre by country
SELECT i.billingcountry, g.name, SUM(i.total) AS total
FROM genre g
JOIN track t USING (genreid)
JOIN invoiceline il USING (trackid)
JOIN invoice i USING (invoiceid)
GROUP BY i.billingcountry, g.name
ORDER BY total DESC;
