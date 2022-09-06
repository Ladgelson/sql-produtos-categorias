-- public.author definition

-- Drop table

-- DROP TABLE public.author;

CREATE TABLE public.author (
	id int4 NOT NULL,
	nickname varchar(255) NULL,
	CONSTRAINT author_pkey PRIMARY KEY (id)
);


-- public.book definition

-- Drop table

-- DROP TABLE public.book;

CREATE TABLE public.book (
	id int4 NOT NULL,
	name varchar(255) NULL,
	release_date date NULL,
	CONSTRAINT book_pkey PRIMARY KEY (id)
);


-- public.genre definition

-- Drop table

-- DROP TABLE public.genre;

CREATE TABLE public.genre (
	id int4 NOT NULL,
	name varchar(255) NULL,
	CONSTRAINT genre_pkey PRIMARY KEY (id)
);


-- public.book_author definition

-- Drop table

-- DROP TABLE public.book_author;

CREATE TABLE public.book_author (
	author_id int4 NOT NULL,
	book_id int4 NOT NULL,
	CONSTRAINT fkbjqhp85wjv8vpr0beygh6jsgo FOREIGN KEY (author_id) REFERENCES public.author(id),
	CONSTRAINT fkhwgu59n9o80xv75plf9ggj7xn FOREIGN KEY (book_id) REFERENCES public.book(id)
);


-- public.book_genre definition

-- Drop table

-- DROP TABLE public.book_genre;

CREATE TABLE public.book_genre (
	book_id int4 NOT NULL,
	genre_id int4 NOT NULL,
	CONSTRAINT fk52evq6pdc5ypanf41bij5u218 FOREIGN KEY (book_id) REFERENCES public.book(id),
	CONSTRAINT fk8l6ops8exmjrlr89hmfow4mmo FOREIGN KEY (genre_id) REFERENCES public.genre(id)
);


-- public.person definition

-- Drop table

-- DROP TABLE public.person;

CREATE TABLE public.person (
	id int4 NOT NULL,
	name varchar(255) NULL,
	author_id int4 NULL,
	CONSTRAINT person_pkey PRIMARY KEY (id),
	CONSTRAINT fkefaiya2cq8ircbi14kcarenq FOREIGN KEY (author_id) REFERENCES public.author(id)
);


-- public.physical_person definition

-- Drop table

-- DROP TABLE public.physical_person;

CREATE TABLE public.physical_person (
	cpf varchar(255) NULL,
	id int4 NOT NULL,
	CONSTRAINT physical_person_pkey PRIMARY KEY (id),
	CONSTRAINT fki5wkef5e0n788mi3gklulomxi FOREIGN KEY (id) REFERENCES public.person(id)
);


-- public.business_person definition

-- Drop table

-- DROP TABLE public.business_person;

CREATE TABLE public.business_person (
	cnpj varchar(255) NULL,
	id int4 NOT NULL,
	CONSTRAINT business_person_pkey PRIMARY KEY (id),
	CONSTRAINT fkb55u440bqsc8udgu5ksm1r2q9 FOREIGN KEY (id) REFERENCES public.person(id)
);