select * from  
(select  purpose, count(*) from loans where month = 4
group by purpose
order by COUNT(*) desc) 
where rownum=1;


select * from
(select first, count(*) as toplam from clients where age =50 or age = 51
group by first)
where toplam=2;


select year, count(*) as total_number_of_accounts from accounts
group by year;


select type, count(*) as total from transactions
group by type
order by total desc;

select type, sum(amount) as total_amount from transactions
group by type
order by total_amount desc;

