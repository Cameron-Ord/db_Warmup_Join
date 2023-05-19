insert into client (name, joined_on, phone_number, address) values ('John', '2022-09-11', '587-990-0854', '10321 153 astreet NW');

insert into account (client_id, account_number, acc_type, created_at) values (2, 1, 'chequing', '2022-09-11');
insert into account (client_id, account_number, acc_type, created_at) values (2, 2, 'deposit', '2022-09-11');

insert into transactions (client_id, account_id, acc_type, transac_timestamp, amount) values (2, 5, 'chequing', '2023-01-11' ,100);


select client.name, account.account_number, account.acc_type
from client inner join account on client.id = account.client_id;

select account.account_number, transactions.transac_timestamp, transactions.amount
from account inner join transactions on account.id = transactions.account_id
where account.acc_type = 'chequing' and transactions.amount >= 1000;

select c.name, a.account_number, t.amount 
from client c inner join account a on c.id = a.client_id inner join transactions t on a.id = t.account_id 
where a.acc_type = 'deposit' and c.id = 1;