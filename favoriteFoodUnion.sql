SELECT Food_Name, Calories 
FROM food_table 
WHERE 
calories < 
    (SELECT calorie_count 
    FROM customers 
    WHERE customer_id = '10')

UNION

SELECT Food_Name, Calories FROM food_table 
NATURAL JOIN customers WHERE favorite_food = food_name