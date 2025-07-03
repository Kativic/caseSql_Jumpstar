SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
 
GRANT FILE ON *.* TO 'root'@'localhost';
SET GLOBAL local_infile = 1;
SET GLOBAL sql_mode = '';

-- Criação do Schema 

CREATE SCHEMA CaseSQL_IMDB;
USE CaseSQL_IMDB;

CREATE TABLE CaseSQL_Movies (
    imdb_title_id VARCHAR(100) ,
    title VARCHAR(255),
    original_title VARCHAR(255),
    year Int,
    date_published date,
    genre VARCHAR(255),
    duration int,
    country VARCHAR(255),
    language VARCHAR(255),
    director VARCHAR(255),
    writer VARCHAR(255),
    production_company VARCHAR(255),
    actors TEXT,
    description TEXT,
    avg_vote FLOAT,
    votes int,
    budget float,
    usa_gross_income float,
    worldwide_gross_income float,
    metascore int,
    reviews_from_users float,
    reviews_from_critics float
);

CREATE TABLE CaseSQL_names (
    imdb_name_id VARCHAR(100),
    name VARCHAR(255),
    birth_name VARCHAR(255),
    height FLOAT,
    bio TEXT,
    birth_details TEXT,
    date_of_birth DATE,
    place_of_birth VARCHAR(255),
    death_details TEXT,
    date_of_death Date,
    place_of_death VARCHAR(255),
    reason_of_death TEXT,
    spouses_string TEXT,
    spouses int,
    divorces Int,
    spouses_with_children int,
    children int
);

CREATE TABLE CaseSQL_title_principals (
    imdb_title_id VARCHAR(255),
    ordering INT,
    imdb_name_id VARCHAR(255),
    category VARCHAR(255),
    job VARCHAR(255),
    characters VARCHAR(255)
);

