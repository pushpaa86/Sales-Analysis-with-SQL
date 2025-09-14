select * from sales ;

select * from people;

select s.SaleDate, s.amount, p.Salesperson, s.SPID, p.spid
from sales s
join people p on p.SPID = s.SPID;

select s.saleDate, s.amount, pr.product
from sales s
left join products pr on pr.pid = s.pid;

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid;

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where s.amount <500 
and p.Team ='Jucies';

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where s.amount <500 
and p.Team = '';

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
join geo g on g.geoid = s.geoid
where s.amount <500 
and p.Team = ''
and g.Geo in ('New Zealand' , 'India')
order by saleDate;
