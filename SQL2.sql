-- create table
create table email_list (
	id int primary key,
	email varchar
)

-- insert
insert into email_list VALUES
(1 , 'abc@gmail.com'),
(2 , 'def@gmail.com'),
(3 , 'abc@gmail.com'),
(4 , 'abc@gmail.com'),
(5 , 'def@gmail.com'),
(6 , 'def@gmail.com'),
(7 , 'abc@gmail.com');

-- answer
SELECT email FROM email_list GROUP by email having count(email) > 1;