CREATE TABLE workers
(
	id int  PRIMARY KEY, 
	name VARCHAR(30), 
	city VARCHAR(25), 
	salary int, 
	company VARCHAR(30)
);

   
INSERT INTO workers VALUES(123456789, 'Mehmet Yilmaz', 'Istanbul', 5500, 'Honda');
INSERT INTO workers VALUES(234567890, 'Ali Sahin', 'Istanbul', 4500, 'Toyota');
INSERT INTO workers VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 2000, 'Honda'); 
INSERT INTO workers VALUES(453445611, 'Ali Sahin', 'Ankara', 4000, 'Ford');
INSERT INTO workers VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 3000, 'Ford');


SELECT salary,name FROM workers WHERE salary>4000
UNION
SELECT salary,name FROM workers WHERE salary>5000;


SELECT city, salary FROM workers WHERE name='Mehmet Ozturk'
UNION 
SELECT city, salary FROM workers WHERE city='Istanbul' order by salary desc;


SELECT name,salary,company FROM workers WHERE salary<5000
UNION
SELECT name,salary,company FROM workers WHERE company <> 'Honda'


SELECT name,city FROM workers WHERE name= 'Ali Sahin'
INTERSECT
SELECT name,city FROM workers WHERE city!= 'Istanbul';

SELECT name,city FROM workers WHERE name= 'Mehmet Ozturk'
EXCEPT
SELECT name,city FROM workers WHERE city<> 'Ankara';


CREATE TABLE customers 
(
id int UNIQUE,
name varchar(50) NOT NULL,
salary int
);



INSERT INTO customers (id, name, salary) VALUES (101, 'Ali', 10000);  
INSERT INTO customers (id, name, salary) VALUES (102, 'Ayse', 5500);  
INSERT INTO customers (id, name, salary) VALUES (103, 'Ahmet', 7000);
INSERT INTO customers (id, name, salary) VALUES (104, 'Mehmet', 4000);  
INSERT INTO customers (id, name, salary) VALUES (105, 'Fatma', 4000);
INSERT INTO customers (id, name, salary) VALUES (106, 'Merve', 8000);
INSERT INTO customers (id, name, salary) VALUES (107, 'merve', 8000);


SELECT * FROM customers WHERE name LIKE 'A%';

SELECT * FROM customers WHERE name ILIKE 'm%';

SELECT * FROM customers WHERE name LIKE '%e';

SELECT * FROM customers WHERE name LIKE '%et%';

SELECT * FROM customers WHERE name LIKE '___ve%';









