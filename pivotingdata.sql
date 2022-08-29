CREATE TABLE PIVOTTABLE(
	NAME VARCHAR(100),
	VALUE VARCHAR(100),
	ID INT
)


insert into pivottable values ('name','adam',1)
insert into pivottable values ('gender','male',1)
insert into pivottable values ('salary','50000',1)
-- table output looks like
-- id | Name | gender | salary
-- 1  | adam | male   | 50000
-- two ways of converting from columns to rows also known as pivoting

-- Solution 1 - Using Case statements
-- Max function is used to avoid empty or blank cells
select id, 
MAX(case when Name = 'name' then value else '' end) as name,
MAX(case when Name = 'gender' then value else '' end) as gender,
MAX(case when Name = 'salary' then value else '' end) as salary
from pivottable
GROUP BY ID

-- Solution 2- using Pivot function

select [id],[Name],[gender],[salary]
from 
(select id,name as Ename ,value
from pivottable) as source_table
PIVOT(
MAX(VALUE)
FOR ENAME IN ([Name],[gender],[salary])) as finaltable