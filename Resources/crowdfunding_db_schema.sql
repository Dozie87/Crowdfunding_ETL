create table category(
	category_id varchar(10) primary key not null,
	category_name varchar(50) not null
);

create table subcategory(
	subcategory_id varchar(10) primary key not null,
	subcategory_name varchar(50) not null
);

create table contacts(
	contact_id int primary Key not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(100) not null
);

Create table campaign(
	cf_id int primary key not null,
	contact_id int not null,
	company_name varchar(100) not null,
	description TEXT not null,
	goal numeric (10,2) not null,
	pledged numeric (10,2) not null,
	outcome varchar(50) not null,
	backers_count int not null,
	country varchar(10)not null,
	currency varchar(10) not null,
	launched_date DATE not null,
	end_date DATE not null,
	category_id varchar(10) not null,
	subcategory_id varchar(10) not null,
	foreign key(category_id ) references category(category_id),
	foreign key(subcategory_id ) references subcategory(subcategory_id),
	foreign key(contact_id ) references contacts(contact_id)
);

select * from campaign
select * from category
select * from subcategory
select * from contacts