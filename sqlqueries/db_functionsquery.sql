insert into dealership (name, location, date_established) values ('adealer', 'Edmonton', '2021-04-27');
insert into dealership (name, location, date_established) values ('adealer2', 'Edmonton', '2016-09-14');
insert into dealership (name, location, date_established) values ('adealer2', 'Edmonton', '2011-06-17');

insert into for_sale_cars (dealership_id, price, model, `year`) values (2, 1400, 'car', '2022-01-01'),
(2, 1400, 'car', '2022-01-02'),
(1, 1400, 'jeep', '2022-01-03'),
(3, 1400, 'car', '2022-01-04'),
(1, 1400, 'jeep', '2022-01-05'),
(1, 1400, 'car', '2022-01-06'),
(2, 1400, 'truck', '2022-01-07'),
(1, 1400, 'car', '2022-01-08'),
(2, 1400, 'truck', '2022-01-09'),
(3, 1400, 'car', '2022-01-10'),
(1, 1400, 'van', '2022-01-11'),
(2, 1400, 'car', '2022-01-12'),
(1, 1400, 'SUV', '2022-01-13'),
(3, 1400, 'car', '2022-01-14'),
(1, 1400, 'trailer', '2022-01-15');



SELECT model, `year` from for_sale_cars order by `year` desc;

SELECT name, location from dealership
order by date_established asc 
limit 1;

SELECT fsc.model, fsc.`year`, d.name, d.location
from dealership d inner join for_sale_cars fsc on d.id = fsc.dealership_id 
where fsc.`year` > '2019-01-1'
order by price asc;

SELECT count(id) from for_sale_cars fsc where model = 'sunfire';

SELECT name, location from dealership 
inner join for_sale_cars on dealership.id = for_sale_cars.dealership_id
order by date_established desc;

select dealership_id, count(id) 
from for_sale_cars 
group by dealership_id;

select model, count(id) from for_sale_cars 
group by dealership_id
having count(id) >=2;

select model, count(id) from for_sale_cars 
WHERE `year` > '2020-01-01' and model LIKE ('%truck%')
group by dealership_id
having count(id) >=2 ;

