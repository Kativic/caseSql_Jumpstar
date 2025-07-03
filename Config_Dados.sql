USE CaseSQL_IMDB;

-- TABELA 1 - MOVIES

DROP TABLE IF EXISTS `casesql_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casesql_movies` (
  `imdb_title_id` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `original_title` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `date_published` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `production_company` varchar(255) DEFAULT NULL,
  `actors` text,
  `description` text,
  `avg_vote` float DEFAULT NULL,
  `votes` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `usa_gross_income` varchar(255) DEFAULT NULL,
  `worldwide_gross_income` varchar(255) DEFAULT NULL,
  `metascore` varchar(255) DEFAULT NULL,
  `reviews_from_users` varchar(255) DEFAULT NULL,
  `reviews_from_critics` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Rotina de importação

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CaseSQL_movies.csv'
INTO TABLE CaseSQL_movies
CHARACTER SET 'utf8mb4'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\casesql_names.csv'
INTO TABLE casesql_names
CHARACTER SET 'utf8mb4'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(imdb_name_id, name, birth_name, @height, bio, birth_details, date_of_birth, place_of_birth, death_details, date_of_death, place_of_death, reason_of_death, spouses_string, spouses, divorces, spouses_with_children, children)
SET height = NULLIF(@height, '');

-- Alteração de tipo para upload de arquivo

ALTER TABLE casesql_names MODIFY date_of_birth VARCHAR(255), MODIFY date_of_death VARCHAR(255);

-- ----------------------FIM TABELA 2 ----------------------------------
-- TABELA 3 - RATINGS

DROP TABLE IF EXISTS `casesql_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casesql_ratings` (
  `imdb_title_id` VARCHAR(100) DEFAULT NULL,
  `weighted_average_vote` float DEFAULT NULL,
  `total_votes` INT DEFAULT NULL,
  `mean_vote` DECIMAL (10,2) DEFAULT NULL,
  `median_vote` DECIMAL (10,2) DEFAULT NULL,
  `votes_10` INT DEFAULT NULL,
  `votes_9` INT DEFAULT NULL,
  `votes_8` INT DEFAULT NULL,
  `votes_7` INT DEFAULT NULL,
  `votes_6` INT DEFAULT NULL,
  `votes_5` INT DEFAULT NULL,
  `votes_4` INT DEFAULT NULL,
  `votes_3` INT DEFAULT NULL,
  `votes_2` INT DEFAULT NULL,
  `votes_1` INT DEFAULT NULL,
  `allgenders_0age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `allgenders_0age_votes` DECIMAL (10,2) DEFAULT NULL,
  `allgenders_18age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `allgenders_18age_votes` DECIMAL (10,2) DEFAULT NULL,
  `allgenders_30age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `allgenders_30age_votes` DECIMAL (10,2) DEFAULT NULL,
  `allgenders_45age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `allgenders_45age_votes` DECIMAL (10,2) DEFAULT NULL,
  `males_allages_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `males_allages_votes` DECIMAL (10,2) DEFAULT NULL,
  `males_0age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `males_0age_votes` DECIMAL (10,2) DEFAULT NULL,
  `males_18age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `males_18age_votes` DECIMAL (10,2) DEFAULT NULL,
  `males_30age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `males_30age_votes` DECIMAL (10,2) DEFAULT NULL,
  `males_45age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `males_45age_votes` DECIMAL (10,2) DEFAULT NULL,
  `females_allages_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `females_allages_votes` DECIMAL (10,2) DEFAULT NULL,
  `females_0age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `females_0age_votes` DECIMAL (10,2) DEFAULT NULL,
  `females_18age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `females_18age_votes` DECIMAL (10,2) DEFAULT NULL,
  `females_30age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `females_30age_votes` DECIMAL (10,2) DEFAULT NULL,
  `females_45age_avg_vote` DECIMAL (10,2) DEFAULT NULL,
  `females_45age_votes` DECIMAL (10,2) DEFAULT NULL,
  `top1000_voters_rating` DECIMAL (10,2) DEFAULT NULL,
  `top1000_voters_votes` DECIMAL (10,2) DEFAULT NULL,
  `us_voters_rating` DECIMAL (10,2) DEFAULT NULL,
  `us_voters_votes` DECIMAL (10,2) DEFAULT NULL,
  `non_us_voters_rating` DECIMAL (10,2) DEFAULT NULL,
  `non_us_voters_votes` DECIMAL (10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

  -- criar uma tabela temporaria trazendo todos os dados
  
CREATE TABLE casesql_ratings_temp (
  imdb_title_id VARCHAR(100) DEFAULT NULL,
  weighted_average_vote VARCHAR(100) DEFAULT NULL,
  total_votes INT DEFAULT NULL,
  mean_vote VARCHAR(100) DEFAULT NULL,
  median_vote VARCHAR(100) DEFAULT NULL,
  votes_10 INT DEFAULT NULL,
  votes_9 INT DEFAULT NULL,
  votes_8 INT DEFAULT NULL,
  votes_7 INT DEFAULT NULL,
  votes_6 INT DEFAULT NULL,
  votes_5 INT DEFAULT NULL,
  votes_4 INT DEFAULT NULL,
  votes_3 INT DEFAULT NULL,
  votes_2 INT DEFAULT NULL,
  votes_1 INT DEFAULT NULL,
  allgenders_0age_avg_vote VARCHAR(100) DEFAULT NULL,
  allgenders_0age_votes VARCHAR(100) DEFAULT NULL,
  allgenders_18age_avg_vote VARCHAR(100) DEFAULT NULL,
  allgenders_18age_votes VARCHAR(100) DEFAULT NULL,
  allgenders_30age_avg_vote VARCHAR(100) DEFAULT NULL,
  allgenders_30age_votes VARCHAR(100) DEFAULT NULL,
  allgenders_45age_avg_vote VARCHAR(100) DEFAULT NULL,
  allgenders_45age_votes VARCHAR(100) DEFAULT NULL,
  males_allages_avg_vote VARCHAR(100) DEFAULT NULL,
  males_allages_votes VARCHAR(100) DEFAULT NULL,
  males_0age_avg_vote VARCHAR(100) DEFAULT NULL,
  males_0age_votes VARCHAR(100) DEFAULT NULL,
  males_18age_avg_vote VARCHAR(100) DEFAULT NULL,
  males_18age_votes VARCHAR(100) DEFAULT NULL,
  males_30age_avg_vote VARCHAR(100) DEFAULT NULL,
  males_30age_votes VARCHAR(100) DEFAULT NULL,
  males_45age_avg_vote VARCHAR(100) DEFAULT NULL,
  males_45age_votes VARCHAR(100) DEFAULT NULL,
  females_allages_avg_vote VARCHAR(100) DEFAULT NULL,
  females_allages_votes VARCHAR(100) DEFAULT NULL,
  females_0age_avg_vote VARCHAR(100) DEFAULT NULL,
  females_0age_votes VARCHAR(100) DEFAULT NULL,
  females_18age_avg_vote VARCHAR(100) DEFAULT NULL,
  females_18age_votes VARCHAR(100) DEFAULT NULL,
  females_30age_avg_vote VARCHAR(100) DEFAULT NULL,
  females_30age_votes VARCHAR(100) DEFAULT NULL,
  females_45age_avg_vote VARCHAR(100) DEFAULT NULL,
  females_45age_votes VARCHAR(100) DEFAULT NULL,
  top1000_voters_rating VARCHAR(100) DEFAULT NULL,
  top1000_voters_votes VARCHAR(100) DEFAULT NULL,
  us_voters_rating VARCHAR(100) DEFAULT NULL,
  us_voters_votes VARCHAR(100) DEFAULT NULL,
  non_us_voters_rating VARCHAR(100) DEFAULT NULL,
  non_us_voters_votes VARCHAR(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

 -- passo 2 - fazer a carga inicial dentro desta tabela temporaria
 
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CaseSQL_ratings.csv'
INTO TABLE casesql_ratings_temp
CHARACTER SET 'utf8mb4'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(imdb_title_id, weighted_average_vote, total_votes, mean_vote, median_vote, votes_10, votes_9, votes_8, votes_7, votes_6, votes_5, votes_4, votes_3, votes_2, votes_1, allgenders_0age_avg_vote, allgenders_0age_votes, allgenders_18age_avg_vote, allgenders_18age_votes, allgenders_30age_avg_vote, allgenders_30age_votes, allgenders_45age_avg_vote, allgenders_45age_votes, males_allages_avg_vote, males_allages_votes, males_0age_avg_vote, males_0age_votes, males_18age_avg_vote, males_18age_votes, males_30age_avg_vote, males_30age_votes, males_45age_avg_vote, males_45age_votes, females_allages_avg_vote, females_allages_votes, females_0age_avg_vote, females_0age_votes, females_18age_avg_vote, females_18age_votes, females_30age_avg_vote, females_30age_votes, females_45age_avg_vote, females_45age_votes, top1000_voters_rating, top1000_voters_votes, us_voters_rating, us_voters_votes, non_us_voters_rating, non_us_voters_votes);

-- passo 3 - agora enviar os dados da temporaria para a final trocando os espaços vazios por NULL

INSERT INTO casesql_ratings
SELECT
    imdb_title_id,
    NULLIF(weighted_average_vote, '') AS weighted_average_vote,
    total_votes,
    NULLIF(mean_vote, '') AS mean_vote,
    NULLIF(median_vote, '') AS median_vote,
    votes_10,
    votes_9,
    votes_8,
    votes_7,
    votes_6,
    votes_5,
    votes_4,
    votes_3,
    votes_2,
    votes_1,
    NULLIF(allgenders_0age_avg_vote, '') AS allgenders_0age_avg_vote,
    NULLIF(allgenders_0age_votes, '') AS allgenders_0age_votes,
    NULLIF(allgenders_18age_avg_vote, '') AS allgenders_18age_avg_vote,
    NULLIF(allgenders_18age_votes, '') AS allgenders_18age_votes,
    NULLIF(allgenders_30age_avg_vote, '') AS allgenders_30age_avg_vote,
    NULLIF(allgenders_30age_votes, '') AS allgenders_30age_votes,
    NULLIF(allgenders_45age_avg_vote, '') AS allgenders_45age_avg_vote,
    NULLIF(allgenders_45age_votes, '') AS allgenders_45age_votes,
    NULLIF(males_allages_avg_vote, '') AS males_allages_avg_vote,
    NULLIF(males_allages_votes, '') AS males_allages_votes,
    NULLIF(males_0age_avg_vote, '') AS males_0age_avg_vote,
    NULLIF(males_0age_votes, '') AS males_0age_votes,
    NULLIF(males_18age_avg_vote, '') AS males_18age_avg_vote,
    NULLIF(males_18age_votes, '') AS males_18age_votes,
    NULLIF(males_30age_avg_vote, '') AS males_30age_avg_vote,
    NULLIF(males_30age_votes, '') AS males_30age_votes,
    NULLIF(males_45age_avg_vote, '') AS males_45age_avg_vote,
    NULLIF(males_45age_votes, '') AS males_45age_votes,
    NULLIF(females_allages_avg_vote, '') AS females_allages_avg_vote,
    NULLIF(females_allages_votes, '') AS females_allages_votes,
    NULLIF(females_0age_avg_vote, '') AS females_0age_avg_vote,
    NULLIF(females_0age_votes, '') AS females_0age_votes,
    NULLIF(females_18age_avg_vote, '') AS females_18age_avg_vote,
    NULLIF(females_18age_votes, '') AS females_18age_votes,
    NULLIF(females_30age_avg_vote, '') AS females_30age_avg_vote,
    NULLIF(females_30age_votes, '') AS females_30age_votes,
    NULLIF(females_45age_avg_vote, '') AS females_45age_avg_vote,
    NULLIF(females_45age_votes, '') AS females_45age_votes,
    NULLIF(top1000_voters_rating, '') AS top1000_voters_rating,
    NULLIF(top1000_voters_votes, '') AS top1000_voters_votes,
    NULLIF(us_voters_rating, '') AS us_voters_rating,
    NULLIF(us_voters_votes, '') AS us_voters_votes,
    NULLIF(non_us_voters_rating, '') AS non_us_voters_rating,
    NULLIF(non_us_voters_votes, '') AS non_us_voters_votes
FROM casesql_ratings_temp;
SELECT * FROM casesql_ratings_temp;
DESCRIBE casesql_ratings_temp;
SELECT * FROM casesql_ratings;
SELECT COUNT(*) FROM casesql_ratings;
DESCRIBE casesql_ratings;
DROP TABLE casesql_ratings_temp;

-- ---------------FIM TABELA 3---------------------------------

-- tabela 4  TITLE PRINCIPALS

DROP TABLE IF EXISTS `casesql_title_principals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casesql_title_principals` (
  `imdb_title_id` varchar(255) DEFAULT NULL,
  `ordering` DECIMAL (10,2) DEFAULT NULL,
  `imdb_name_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `characters` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- rotina de importação

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CaseSQL_title_principals.csv'
INTO TABLE casesql_title_principals
character set 'UTF8MB4'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(imdb_title_id, ordering, imdb_name_id, category, job, @characters)
SET characters = @characters;

SELECT COUNT(*) FROM casesql_title_principals;

-- fim tabela 4 --------------------------------------------------------------
 
 -- VALIDAÇÕES
 
  SELECT COUNT(*) FROM casesql_movies;
  SELECT COUNT(*) FROM casesql_names;
  SELECT COUNT(*) FROM casesql_ratings;
  SELECT COUNT(*) FROM casesql_title_principals;
 
SELECT * FROM casesql_movies;
SELECT COUNT(*) FROM casesql_movies;

SELECT COUNT(*) FROM casesql_ratings;
SELECT * FROM casesql_ratings;

