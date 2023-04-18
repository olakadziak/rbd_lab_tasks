/*1*/
/*sortowanie*/
SELECT city, zip_code, count(data.address.id)
FROM data.address
WHERE city = 'Warszawa'
GROUP BY city, zip_code
ORDER BY city ASC;


SELECT payment_way_id
FROM data.driver
WHERE id IN
  (SELECT user_id FROM data.ride
    WHERE payment_way_id = 1); /*?*/

/*LIMIT z OFFSET (ograniczenie wyświetlania 10 wierszy, z pominięciem 30 pierwszych wierszy)*/
SELECT name, surname
FROM data.user
ORDER BY surname ASC
LIMIT 10 OFFSET 30;

/*UNION*/
SELECT user_id FROM data.driver
UNION
SELECT user_id FROM data.passenger;

/*EXCEPT*/
SELECT user_id FROM data.passenger
EXCEPT
SELECT user_id FROM data.driver;

/*INTERSECT*/
SELECT user_id FROM data.passenger
INTERSECT
SELECT user_id FROM data.driver;

/*INNER JOIN*/
SELECT * FROM data.ride
INNER JOIN data.driver ON data.ride.driver_id = data.driver.id; /*?*/

/*LEFT JOIN*/
SELECT * FROM data.driver
LEFT JOIN data.passenger
ON driver.user_id = passenger.user_id /*?*/

/*RIGHT JOIN*/
SELECT * FROM data.driver
RIGHT JOIN data.passenger
ON driver.user_id = passenger.user_id

/*FULL OUTER JOIN*/
SELECT * FROM data.driver
FULL OUTER JOIN data.passenger
ON driver.user_id = passenger.user_id
