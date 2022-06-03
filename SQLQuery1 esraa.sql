



create table accounts (
id int  primary key identity (1,1),
username varchar ,
password int ,
phone#  varchar(15) ,
fname varchar,
lname varchar,
salary DECIMAL(10,2) ,
hiredate date
);

create table suppliers (
 id int   primary key identity (1,1),
sname varchar,
phone# varchar,
city varchar,
a_id int ,
dated date
)   ;

create table order_details
(
id int  primary key identity (1,1),
dated date,
quantity int,
customer varchar (50),
gross_amount int ,
sal_id int, 
FOREIGN KEY ( sal_id) REFERENCES  accounts (id)
);



create table products (
 p_id int   primary key identity (1,1),
 pname varchar (40) ,
company varchar (40),
potency  varchar (40)  ,
category  varchar (50),
quantity   int  ,
ppackprice  DECIMAL(10,2),
punitprice  DECIMAL(10,2),
retailunitprice DECIMAL(10,2),
s_id  int  , 
a_id int  ,
dated  date ,
mfg date,
exp date ,
FOREIGN KEY ( a_id) REFERENCES accounts (id),
FOREIGN KEY ( s_id) REFERENCES suppliers (id)
);
create table sub_order (
p_id int ,
o_id int ,
quantity int,
discount DECIMAL(10,2) ,
price DECIMAL(10,2),
FOREIGN KEY ( p_id) REFERENCES products ( p_id),
FOREIGN KEY ( o_id) REFERENCES order_details ( id)
)  ;