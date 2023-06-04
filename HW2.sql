create table member_ (
	member_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100)
);
create table snack_bar (
	popcorn VARCHAR(4) primary key,
	pop_size VARCHAR(4),
	drink VARCHAR(4),
	drink_size VARCHAR(4),
	total NUMERIC(4,2),
	member_id SERIAL,
	foreign key(member_id) references member_(member_id)
);

create table tickets (
	movie_id INTEGER primary key,
	ticket_id SERIAL,
	purchase_id SERIAL,
	ticket_type VARCHAR(10),
	theater_num INTEGER,
	member_id SERIAL,
	foreign key(member_id) references member_(member_id)
);
drop table tickets
create table movie(
	title VARCHAR(100) primary key,
	genre VARCHAR(100),
	run_time VARCHAR(150),
	movie_id INTEGER,
	foreign key(movie_id) references tickets(movie_id)
);
insert into member_ (
	member_id, 
	first_name,
	last_name,
	email
) values (
	default, 
	'kobe',
	'bryant',
	'kobe@yahoo.com'
);
insert into snack_bar (
	popcorn,
	pop_size,
	drink,
	drink_size,
	total,
	member_id
) values (
	'N',
	'null',
	'Y',
	'sm',
	12.50,
	default
);
insert into tickets (
	movie_id,
	ticket_id,
	purchase_id,
	ticket_type,
	theater_num,
	member_id
) values (
	4,
	default,
	default,
	'Adult',
	6,
	1
);
insert into movie (
	title,
	genre,
	run_time,
	movie_id
) values (
	'avatar', 
	'action',
	'3hr',
	3
);

select * from snack_bar