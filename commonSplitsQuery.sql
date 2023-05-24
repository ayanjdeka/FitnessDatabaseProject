SELECT spl.split_id, COUNT(spl.split_id)
FROM Customers cu NATURAL JOIN Splits spl
GROUP BY spl.split_id
HAVING COUNT(spl.split_id) > 1
ORDER BY spl.split_id asc