-- create table
create table input_table (
	id int primary key,
	num varchar
)

-- insert
INSERT INTO input_table (id,num) VALUES
('1','1'),
('2','2'),
('3','2'),
('4','2'),
('5','2'),
('6','1'),
('7','1'),
('8','1'),
('9','1');

-- answer
from ( 
  	SELECT num, (row_number() over (order by id) - row_number() OVER (PARTITION by num order by id )) as grup
  	from input_table
  )
  GROUP by num, grup
  having count (*) >= 3;