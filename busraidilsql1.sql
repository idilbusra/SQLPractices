create table greengrocer(
	fruit_name varchar(20),
	fruit_measure_unit char(2),
	fruit_price real,
	fruit_weight real
	
);

select * from greengrocer;

insert into greengrocer values('Strawberry' , 'kg' , 39.99, 1.4 );
insert into greengrocer values('Banana' , 'kg' , 29.99, 1.4 );
insert into greengrocer values('Watermelon' , 'kg' , 22.00, 1 );
insert into greengrocer values('Kiwi' , 'kg' , 39.99, 1.4 );

select * from greengrocer;

