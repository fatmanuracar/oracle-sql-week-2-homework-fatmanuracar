
select * from order_items where unit_price > 150;

select * from employees where hire_date between '01.05.2016' and '31.05.2016';

select * from contacts where first_name = 'Charlie' or first_name = 'Charlsie';

select * from ýnventories where quantity between 10 and 50;

select * from order_items where unit_price >100.000

select * from employees where job_title != 'Manager';

select * from locations where state is null;

select * from orders where status = 'Canceled' and salesman_id is null;

select * from orders where order_date between '01.01.2016' and '30.06.2016'

select * from employees where job_title not like 'S%';

select * from products where product_name like 'Intel Xeon%';

select * from contacts where first_name like 'C%'
order by last_name;

select * from products where product_name like 'Asus%' and list_price < standard_cost;

select * from (select * from products order by product_id ) where rownum<=5;

select o.customer_id, c.name, c.address, o.status from orders o 
inner join customers c on o.customer_id=c.customer_id
where status = 'Shipped';

select category_name from warehouses w 
inner join inventories i on w.warehouse_id=i.warehouse_id
inner join products p on p.product_id=i.product_id
inner join product_categories pc on pc.category_id=p.category_id
where w.warehouse_id=8
group by category_name;

select * from products where list_price between 1000 and 3000;





