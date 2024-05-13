CREATE TABLE flights (
    FlightID INT PRIMARY KEY,
    Origin VARCHAR(50),
    Destination VARCHAR(50),
    Date DATE,
    TailNum VARCHAR(50),
    ArrDelay INT
);

CREATE TABLE planes (
    TailNum VARCHAR(50) PRIMARY KEY,
    Manufacturer VARCHAR(100)
);

SELECT
    f.Origin,
    f.TailNum AS Aircraft,
    p.Manufacturer,
    DATE_FORMAT(f.Date, '%Y-%m-%d') AS Year_Month_Day,
    AVG(f.ArrDelay) AS Average_Delay,
    COUNT(*) AS Flight_Count
FROM
    flights AS f
JOIN
    planes AS p ON f.TailNum = p.TailNum
GROUP BY
    f.Origin, Year_Month_Day, f.TailNum, p.Manufacturer;
