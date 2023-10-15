-- funciones numericas
select -2;

select 7 div 2;
select 7 mod 2;

select abs(24);

-- acos()

-- asin()

-- in()

-- log() log (b,x)

select pi();

select round(pi());

--
-- fecha y hora
--

-- now()

select now();
select curdate();
select curtime();
select utc_date();
select current_date();
select current_timestamp();

-- add date() date_add()

select date_add(now(), interval 15 day);
select date_add(now(), interval 1 hour);
select date_add(now(), interval 1 second); 

-- subdate() date_sub()
select date_sub(now(), interval 10 day);

-- addtime(exp1, exp2)

select addtime(now(), '1 1:1:1:.00001');


-- date()
 select date(now());
 
 -- datediff(exp1, exp2)
 
select datediff(date(now()), '2023-01-01');

-- date_format();

select date_format(now(), '%Y/%m/%d');
select date_format(now(), '%a %b');
select date_format(now(), '%c');
select date_format(now(), '%D');
select date_format(now(), '%h %H');
select date_format(now(), '%M %h %p');
select date_format(now(), '%D %M %y');

-- day
select day(now()); -- dayofmonth()
select month(now());

-- extract(type from date)
select extract(year from now());

-- from_unixtime()



