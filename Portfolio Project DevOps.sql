-- kill other connections
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'week1_workshop' AND pid <> pg_backend_pid();
-- (re)create the database
DROP DATABASE IF EXISTS week1_workshop;
CREATE DATABASE week1_workshop;
-- connect via psql
\c week1_workshop

-- database configuration
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET default_tablespace = '';
SET default_with_oids = false;


---
--- CREATE tables
---
CREATE TABLE current_employees (
	id SERIAL, 
	last_name TEXT NOT NULL,
	first_name TEXT NOT NULL,
	position TEXT NOT NULL,
		PRIMARY KEY (id)
	);

CREATE TABLE annual_training (
	id SERIAL,
	wildlife TEXT NOT NULL,
	osha TEXT NOT NULL,
	docjt TEXT NOT NULL,
	other TEXT NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE associations (
	id SERIAL,
	group TEXT NOT NULL,
    phone_number NUMERIC NOT NULL,
	email_address TEXT NOT NULL,
	required TEXT NOT NULL,
	
	PRIMARY KEY (id)
);
CREATE TABLE past_employees (
	id SERIAL, 
	last_name TEXT NOT NULL,
	first_name TEXT NOT NULL,
	position TEXT NOT NULL,
		PRIMARY KEY (id)
);		


