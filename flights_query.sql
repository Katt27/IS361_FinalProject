-- Use this line if your MySQL doesn't default to the correct database
USE your_database_name;

SELECT 
    f.origin, 
    DATE(f.date) AS date, 
    f.tailnum, 
    p.manufacturer,
    AVG(f.arr_delay) AS avg_delay,
    COUNT(*) AS flight_count
FROM 
    flights f
JOIN 
    planes p ON f.tailnum = p.tailnum
GROUP BY 
    f.origin, 
    DATE(f.date), 
    f.tailnum, 
    p.manufacturer
ORDER BY 
    f.origin, 
    DATE(f.date), 
    f.tailnum;
