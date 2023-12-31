CREATE TABLE people
(
id int,
name varchar(20),
address varchar(15),
age int
);

INSERT INTO people VALUES (1, 'Alex', 'Texas', 23);
INSERT INTO people VALUES (2, 'James', 'Colorado', 43);
INSERT INTO people VALUES (3, 'Maria', 'Utah', 19);
INSERT INTO people VALUES (4, 'Susan', 'Oklahoma', 32);
INSERT INTO people VALUES (5, 'Katty', 'Virginia', 27);
INSERT INTO people VALUES (6, 'Tom', 'Virginia', 43);


DROP TABLE people;

DELETE FROM people WHERE age=27;

SELECT * FROM people;

DELETE FROM people WHERE address IN('Utah','Oklahoma') ;

SELECT * FROM people;

UPDATE people SET name='Ken' WHERE name='Tom';

SELECT * FROM people;

UPDATE people SET id=id+1 WHERE id>2;

SELECT * FROM people;

ALTER TABLE people ADD COLUMN surname varchar(35);

SELECT * FROM people;

ALTER TABLE people ADD COLUMN country DEFAULT 'USA';

ALTER TABLE people DROP COLUMN country;

ALTER TABLE people RENAME COLUMN address TO state;

CREATE TABLE people2
(
	
name varchar(20),
surname varchar(30),
	
CONSTRAINT pr_cs PRIMARY KEY(name),	
CONSTRAINT uni_cs UNIQUE(surname)	
);

DROP TABLE people2;



 
