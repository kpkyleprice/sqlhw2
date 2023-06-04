create table CUSTOMER (
	member_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150)
);

create table CONCESSIONS (
	popcorn VARCHAR(2) primary key,
	pop_size VARCHAR(2),
	drink VARCHAR(2),
	drink_size VARCHAR(2),
	total numeric(2,2),
	foreign key(member_id) references CUSTOMER(member_id)
);
create table TICKETS (
	purchase_id SERIAL primary key,
	quantity NUMERIC(2)
	movied_id SERIAL,
	ticket_type VARCHAR(20),
	theater_num INTEGER not null,
	foreign key(member_id) references CUSTOMER(member_id)
);
create table MOVIE (
	title VARCHAR(100) primary key,
	genre VARCHAR(100),
	run_time VARCHAR(150),
	foreign key(movie_id) references TICKETS(movie_id)
);