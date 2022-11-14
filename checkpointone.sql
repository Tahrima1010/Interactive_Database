Create Database FishFarm;

use FishFarm;

CREATE TABLE fish(
fish_id int  NOT NULL PRIMARY KEY,
fish_name varchar (50) NOT NULL UNIQUE ,
fish_quantity varchar(50) NOT NULL,
seasonality varchar (50) NOT NULL,
sale_price varchar(50) NOT NULL,
parr_price varchar(50)  NOT NULL,
fish_population_weight varchar(50),
maximum_biomass_density varchar(50),
fish_population_distribution varchar(50),
remaining_fish  int not null,
remaining_parr  int not null,
growth_rate varchar(30),
weight_ranges varchar(30),
parr_quantity varchar(50)
);


INSERT INTO fish (fish_id,fish_name,fish_quantity,remaining_fish,seasonality, sale_price, parr_price, fish_population_weight,maximum_biomass_density
,fish_population_distribution,growth_rate,weight_ranges,parr_quantity,remaining_parr) 
VALUES (1001,'Rui Biller','500','500','summer',590, 2000,'25kg','23.01gm/m2','200m','33.5','246mg','1000kg','1000'),
       (1002,'Mrigel','800','800' ,'summer',650,1800,'23kg','12gm/m2','230m','30.01','230mg','1500kg','1500'),
	    (1003,'Shol','500', '500','winter',750,1850,'23kg','11.5gm/m2','270m','31.01','270mg','1460kg','1460'),
		 (1004,'Catla','400','400', 'summer',850,1000,'20kg','13gm/m2','280m','35.01','270mg','1600kg','1600'),
		  (1005,'Pangash','1000','1000','winter',650,2000,'22kg','15gm/m2','270m','33.01','240mg','1800kg','1800'),
		   (1006,'Koi','900', '900','summer',850,2800,'25kg','17gm/m2','240m','35.01','220mg','1400kg','1400'),
		    (1007,'Telapiyea','1500', '1500','summer',450,1500,'27kg','10.05gm/m2','230m','38.01','200mg','1300kg','1300'),
			 (1008,'Magur','700','700', 'summer',250,800,'29kg','12.08gm/m2','220m','35.01','260mg','1700kg','1700'),
			  (1009,'Silver carp','800','800', 'winter',850,1100,'23kg','18gm/m2','200m','38.01','280mg','1100kg','1100'),
			   (1010,'Boal','850','850', 'summer',670,1600,'28kg','13.89gm/m2','240.8m','33.01','245mg','1300kg','1300')



CREATE TABLE subfish(
fish_id int  NOT NULL PRIMARY KEY,
fish_name varchar (50) NOT NULL UNIQUE ,
fish_quantity int NOT NULL,
seasonality varchar (50) NOT NULL,
sale_price varchar(50) NOT NULL,
parr_price varchar(50)  NOT NULL,
fish_population_weight varchar(50),
maximum_biomass_density varchar(50),
fish_population_distribution varchar(50),
remaining_fish  int not null,
remaining_parr  int not null,
growth_rate varchar(30),
weight_ranges varchar(30),
parr_quantity int not null
);

INSERT INTO subfish (fish_id,fish_name,fish_quantity,seasonality, sale_price, parr_price, fish_population_weight,maximum_biomass_density
,fish_population_distribution,remaining_fish,remaining_parr,growth_rate,weight_ranges,parr_quantity) 
VALUES (1001,'Rui Biller',1000,'winter',5000,6000,33,50,100,500,600,33,12,2000)
INSERT INTO subfish (fish_id,fish_name,fish_quantity,seasonality, sale_price, parr_price, fish_population_weight,maximum_biomass_density
,fish_population_distribution,remaining_fish,remaining_parr,growth_rate,weight_ranges,parr_quantity) 

values(1002,'Mrigel',1000,'winter',5000,6000,33,50,100,500,600,33,12,2000),
(1003,'Shol',1000,'winter',5000,6000,33,50,100,500,600,33,12,2000),
(1004,'Catla',1000,'winter',5000,6000,33,50,100,500,600,33,12,2000),
(1005,'Pangash',1000,'winter',5000,6000,33,50,100,500,600,33,12,2000)
     


	  
	  
 create table customer
(
	customer_id int identity(1,1) NOT NULL PRIMARY KEY,
	c_name varchar(50),
	c_address varchar(20),
	c_number int,
	fish_name varchar(20),
	fish_id int NOT NULL FOREIGN KEY REFERENCES fish (fish_id),
	fish_type varchar(50),
	quantity int not null,
    c_date varchar(30),
	amount int not null 

	
);

create table Registration

( id int IDENTITY(1,1) not null primary key,
 
FirstName varchar(30),
LastName varchar(30),
Email varchar(30),
Address varchar(30),
   Phone varchar(30),
   Password varchar(30)
);

select * from Registration

create table employee
(
	employee_id int not null PRIMARY KEY,
	e_name varchar(10),
	e_number int,
	e_address varchar(100),
	salary int,
	e_hours varchar(100),
	e_shift varchar(100),
	e_type varchar(100)
	
);
INSERT INTO employee(employee_id,e_name,e_number,e_address,salary,e_hours,e_shift,e_type) 
VALUES (101,'Purnendu',  01712233101, 'BARISAL', 2000,'4:00:00','night','admin'),
       (102,'Sufi',  01712233102, 'BHOLA', 5000,'5:00:00','day','admin'),
	   (103,'Anik',  01712233103, 'KHULNA', 8000,'6:00:00','night','admin'),
	   (104,'Karim',  01712233104, 'PATUAKHALI', 6000,'7:00:00','night','subadmin'),
	   (105,'Rabbi',  01712233105, 'PIROJPUR', 9000,'7:00:00','day','admin'),
	   (106,'Hasib',  01712233106, 'BHOLA', 4000,'4:00:00','day','subadmin'),
	   (107,'Jawad',  01712233107, 'BARISAL', 7000,'5:00:00','night','admin'),
	   
	   (108,'Rahim',  01712233116, 'BHOLA', 4000,'4:00:00','day','subadmin'),
	   (109,'Farhab',  01712233182, 'BARISAL', 7000,'5:00:00','night','admin'),
	    (110,'Rahat',  01712233111, 'BARISAL', 2000,'4:00:00','night','subadmin')

SELECT fish_name,sale_price,parr_price,parr_quantity,remaining_fish,remaining_parr,feed_name,feed_cost,supplier
FROM fish full join  farm                                                          
ON fish.fish_id = farm.fish_id full join feed on feed.feed_id=farm.feed_id 

SELECT fish_name,sale_price,parr_price,parr_quantity,remaining_fish,remaining_parr,feed_name,feed_cost,supplier
FROM fish full join  farm                                                          
ON fish.fish_id = farm.fish_id full join feed on feed.feed_id=farm.feed_id 

update fish set fish.fish_quantity=fish.fish_quantity-subbranch.quantity from fish inner join subbranch on subbranch.fish_id=fish.fish_id where fish.fish_name=


SELECT fish_name,sale_price,parr_price,remaining_fish,fish_id,remaining_parr,weight_ranges,growth_rate
FROM fish


create table farm
(  
    f_id  int NOT NULL PRIMARY KEY,	
	fish_id int NOT NULL FOREIGN KEY REFERENCES fish (fish_id),
	feed_id int NOT NULL FOREIGN KEY REFERENCES feed (feed_id),
	employee_id int  not NULL FOREIGN KEY REFERENCES employee (employee_id)
);
	INSERT INTO farm (f_id,fish_id,feed_id,employee_id) 
values(1,1001,201,101),
      (2,1002,202,102),
	  (3,1003,203,103),
      (4,1004,204,104),
	  (5,1005,205,105),
      (6,1006,206,106),
	  (7,1007,207,107),
      (8,1008,208,108),
	  (9,1009,209,109),
      (10,1010,210,110)
     

create table feed
(  
    feed_id  int  NOT NULL PRIMARY KEY,
	feed_name varchar(30),
	feed_quantity  varchar(100),
	feed_cost  varchar(100),
	supplier varchar(30) ,
	storing_date varchar(50) not null,
	expiring_date  varchar(50)  not null,
	remaining_feed varchar(50) not null		



);	


INSERT INTO feed(feed_id,feed_name,supplier,feed_cost,feed_quantity,remaining_feed,storing_date,expiring_date)
VALUES(201,'Maize bran','Protiva feed Ltd',500,'100kg','100kg','2021-05-4','2021-05-24'),
        (202,'Rice polish','Sunny feed Ltd',400,'200kg','200kg','2021-05-4','2021-05-24'),
		 (203,'Wheat bran','Bengal feed Ltd',300,'170kg','170kg','2021-05-4','2021-05-24'),
		  (204,'Lentil bran','Brac feed Ltd',350,'190kg','190kg','2021-05-4','2021-05-24'),
		   (205,'Molasses','Sunny feed Ltd',450,'210kg','210kg','2021-05-4','2021-05-24'),
		   (206,'Wheat bran','Bengal feed Ltd',300,'170kg','170kg','2021-05-4','2021-05-24'),
		  (207,'Lentil bran','Brac feed Ltd',350,'190kg','190kg','2021-05-4','2021-05-24'),
		  (208,'Maize bran','Protiva feed Ltd',500,'100kg','100kg','2021-05-4','2021-05-24'),
        (209,'Rice polish','Sunny feed Ltd',400,'200kg','200kg','2021-05-4','2021-05-24'),
		(210,'Molasses','Sunny feed Ltd',450,'210kg','210kg','2021-05-4','2021-05-24')

create table eats
(   
    primary key(fish_id,feed_id),
	
	fish_id int NOT NULL FOREIGN KEY REFERENCES fish (fish_id),
	feed_id int NOT NULL FOREIGN KEY REFERENCES feed (feed_id)
);	

create table buys
(
	
	primary key (customer_id,fish_id),
	fish_id int NOT NULL FOREIGN KEY REFERENCES fish (fish_id),
    customer_id int NOT NULL FOREIGN KEY REFERENCES customer (customer_id),
	
	
);
 create table sub_Branch_Employee
 (
   e_id int  NOT NULL PRIMARY KEY,
   ename varchar(10),
	enumber int,
	eaddress varchar(100),
	salary int,
	ehours varchar(100),
	eshift varchar(100),
	branch_name varchar(100),
 );
 INSERT INTO sub_Branch_Employee(e_id,ename,enumber,eaddress,salary,ehours,eshift,branch_name) 
VALUES (201,'Purnendu',  01712233101, 'BARISAL', 2000,'4:00:00','night','Bhola Branch'),
       (202,'Sufi',  01712233102, 'BHOLA', 5000,'5:00:00','day','Barishal Branch')
create table Subbranch
 (
 s_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
 subbranchname varchar(20),
    vaddress varchar(20),
	number int,
	fishname varchar(20),
	fish_id int NOT NULL FOREIGN KEY REFERENCES subfish (fish_id),
	
	fishtype varchar(50),
	quantity int not null,
    s_date varchar(30),
	amount varchar(20)


	
);
 


 create table mainbranch
 (
    m_id int  NOT NULL PRIMARY KEY,
	fish_id int NOT NULL FOREIGN KEY REFERENCES fish (fish_id),
	s_id int NOT NULL FOREIGN KEY REFERENCES subbranch (s_id),
	employee_id int  not NULL FOREIGN KEY REFERENCES employee (employee_id),
	s_brunch_name varchar(100),
	supplied_fish varchar(100),
	supplied_parr varchar(100),
	
 );
  INSERT INTO mainbranch(m_id,fish_id,s_id,employee_id,s_brunch_name,supplied_fish,supplied_parr) 
VALUES (801,1002,  502, 105,'Bhola Branch','1000kg','945kg'),
       (802,1005,  501,106,'Bhola Branch','900kg','700kg')

 create table pay 
(
 primary key(s_id,customer_id),
s_id int NOT NULL FOREIGN KEY REFERENCES subbranch (s_id),
customer_id int NOT NULL FOREIGN KEY REFERENCES customer (customer_id),
  
);

SELECT *FROM pay
SELECT *FROM sub_Branch_Employee
SELECT *FROM mainbranch
SELECT *FROM subbranch
SELECT *FROM fish
SELECT *FROM customer
SELECT *FROM farm
SELECT *FROM employee
SELECT *FROM feed
SELECT *FROM eats
SELECT *FROM Registration 
SELECT *FROM SignIn
SELECT *FROM buys
SELECT *FROM subfish
select Address from Registration where Email='rahim12@gmail.com'


INSERT INTO eats(fish_id,feed_id)
 VALUES(1001,201),
        (1002,202),
		(1003,203),
		(1004,204),
		(1005,205),
		(1006,206),
		(1007,207),
		(1008,208),
		(1009,209),
		(1010,210)








create table SignIn

( s_id int IDENTITY(1,1) not null primary key,
 
username varchar(30),

   password varchar(30)
);



                 

update fish set remaining_parr=remaining_parr-quantity from fish  where fish_id=1001
delete from customer  where customer_id=30
delete from Registration  where id in (	11,12,13,14)

update fish set remaining_fish=500 from fish where fish_id='1001'