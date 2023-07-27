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



