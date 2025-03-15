
--I am using the SQLite platform, some terminal command MAY NOT WORK if you are using other platforms like MySQL
--create database for this project
--sqlite3 cpsc368.db


--.mode csv    --enable reading csv in sql/ MUST RUN THIS BEFORE READING THE ENTIRE SCRIPT


--read this .sql file by 
--.read telemed.sql



drop table ServiceCount;
drop table Patients;
drop table Beneficiary;
drop table State;


CREATE TABLE State(
    state_id INTEGER PRIMARY KEY AUTOINCREMENT,
    state_name VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE Beneficiary (
    row_id INTEGER PRIMARY KEY,
    year_quarter VARCHAR(20) NOT NULL,
    state_name VARCHAR(50) NOT NULL,
    sex VARCHAR(20),
    age_group VARCHAR(20),
    total_bene_th_elig DECIMAL(18,4) NOT NULL,
    total_bene_telehealth DECIMAL(18,4) NOT NULL,
    pct_telehealth DECIMAL(10,4) NOT NULL,
    FOREIGN KEY (state_name) REFERENCES State(state_name) 
        ON DELETE NO ACTION 
        ON UPDATE CASCADE
);


CREATE TABLE Patients (
    row_id INTEGER PRIMARY KEY,
    year_quarter VARCHAR(10) NOT NULL,
    state_name VARCHAR(50) NOT NULL,
    group_category VARCHAR(50),
    subgroup VARCHAR(100),
    value DECIMAL(10,2),
    FOREIGN KEY (state_name) REFERENCES State(state_name) 
        ON DELETE NO ACTION 
        ON UPDATE CASCADE
);


CREATE TABLE ServiceCount (
    year_quarter VARCHAR(10) NOT NULL,
    state_name VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    month INT NOT NULL,
    service_type VARCHAR(50) NOT NULL,
    service_count INT NOT NULL,
    rate_per_1000_beneficiaries DECIMAL(10,2),
    PRIMARY KEY(state_name,year,month,service_type),
    FOREIGN KEY (state_name) REFERENCES State(state_name) 
        ON DELETE NO ACTION 
        ON UPDATE CASCADE
);



INSERT INTO State (state_name) VALUES 
('Alabama'),
('Alaska'),
('Arizona'),
('Arkansas'),
('California'),
('Colorado'),
('Connecticut'),
('Delaware'),
('Florida'),
('Georgia'),
('Hawaii'),
('Idaho'),
('Illinois'),
('Indiana'),
('Iowa'),
('Kansas'),
('Kentucky'),
('Louisiana'),
('Maine'),
('Maryland'),
('Massachusetts'),
('Michigan'),
('Minnesota'),
('Mississippi'),
('Missouri'),
('Montana'),
('Nebraska'),
('Nevada'),
('New Hampshire'),
('New Jersey'),
('New Mexico'),
('New York'),
('North Carolina'),
('North Dakota'),
('Ohio'),
('Oklahoma'),
('Oregon'),
('Pennsylvania'),
('Rhode Island'),
('South Carolina'),
('South Dakota'),
('Tennessee'),
('Texas'),
('Utah'),
('Vermont'),
('Virginia'),
('Washington'),
('West Virginia'),
('Wisconsin'),
('Wyoming'),
('National'),
('United States');


----inserting csv as tuples (change to local path if needed)

.import data/clean/csv_noheader/telemeduse_for_sql.csv Patients
.import data/clean/csv_noheader/tele_service_for_sql.csv ServiceCount
.import data/clean/csv_noheader/medtrend_for_sql.csv Beneficiary



