-- write your queries here

SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;
first_name, last_name and count 

SELECT o.first_name, o.last_name, COUNT(v.owner_id) 
FROM owners o 
JOIN vehicles v ON o.id = v.owner_id
GROUP BY (first_name, last_name) 
ORDER BY first_name;

SELECT o.first_name, o.last_name, ROUND(AVG(price)) AS average_price, COUNT(v.owner_id) 
FROM owners o 
JOIN vehicles v ON o.id = v.owner_id
GROUP BY (first_name, last_name) 
HAVING COUNT(v.owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;
