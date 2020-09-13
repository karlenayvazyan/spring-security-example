CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table users
(
	id uuid not null DEFAULT uuid_generate_v4 (),
	email varchar(255) not null,
	first_name varchar(100),
	last_name varchar(100),
	password varchar(255) not null,
	role varchar(20) default 'USER' not null,
	status varchar default 'ACTIVE' not null
);

create unique index users_id_uindex on users (id);

alter table users add constraint users_pk primary key (id);

INSERT INTO users (email, first_name, last_name, password, role, status) values
('admin@mail.ru', 'admin', 'admin', '$2y$12$xFqWM9TRE.0w0p1Q0ovQAe/nPiOB641HGnziQ1Ovr17wj9/1gUK8K', 'ADMIN', 'ACTIVE'),
('user@mail.ru', 'user', 'user', '$2y$12$GB6vbjfcl/3O6uaLFM30WOgdxnQfqmbbo7UQ.UuCTFOE9T6kQUBsa', 'USER', 'BANNED');