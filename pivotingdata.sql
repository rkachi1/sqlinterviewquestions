CREATE TABLE PIVOTTABLE(
	NAME VARCHAR(100),
	VALUE VARCHAR(100),
	ID INT
)


insert into pivottable values ('name','adam',1)
insert into pivottable values ('gender','male',1)
insert into pivottable values ('salary','50000',1)

-- two ways of converting from columns to rows also known as pivoting

-- Solution 1 - Using Case statements