select * from sales

create view sales_info as select * from sales

select * from sales_info

--update--

update sales_info set ship_mode = 'third class',ship_date = '2016-11-12' 
	where product_id= 'FUR-TA-10000577'

select * from sales_info where product_id= 'FUR-TA-10000577'

--Alter--

select * from sales_info

Alter table sales_info alter column serial_no type int

ERROR:  This operation is not supported for views.ALTER action ALTER COLUMN ... SET DATA TYPE cannot be performed on relation "sales_info" 

ERROR:  ALTER action ALTER COLUMN ... SET DATA TYPE cannot be performed on relation "sales_info"
SQL state: 42809
Detail: This operation is not supported for views.

Alter table sales_info set order_line = null where ship_mode = 'Standard Class'

ERROR:  syntax error at or near "order_line"
LINE 1: Alter table sales_info set order_line = 'null' where ship_mo...
                                   ^ 

SQL state: 42601
Character: 28

--delete--

begin
delete from sales_info  where order_id = 4



