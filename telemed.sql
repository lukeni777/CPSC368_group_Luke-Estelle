
drop table ServiceCount;
drop table Patients;
drop table Beneficiary;
drop table State;


CREATE TABLE State(
    state_id INTEGER PRIMARY KEY,
    state_name VARCHAR(50) UNIQUE NOT NULL
);

---oracle seems not supporting on update/ on delete cascade for foreign keys
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
);


CREATE TABLE Patients (
    row_id INTEGER PRIMARY KEY,
    year_quarter VARCHAR(10) NOT NULL,
    state_name VARCHAR(50) NOT NULL,
    group_category VARCHAR(150),
    subgroup VARCHAR(100),
    value DECIMAL(10,2),
    FOREIGN KEY (state_name) REFERENCES State(state_name) 
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
);


INSERT ALL
    INTO State (state_id, state_name) VALUES (1, 'Alabama')
    INTO State (state_id, state_name) VALUES (2, 'Alaska')
    INTO State (state_id, state_name) VALUES (3, 'Arizona')
    INTO State (state_id, state_name) VALUES (4, 'Arkansas')
    INTO State (state_id, state_name) VALUES (5, 'California')
    INTO State (state_id, state_name) VALUES (6, 'Colorado')
    INTO State (state_id, state_name) VALUES (7, 'Connecticut')
    INTO State (state_id, state_name) VALUES (8, 'Delaware')
    INTO State (state_id, state_name) VALUES (9, 'Florida')
    INTO State (state_id, state_name) VALUES (10, 'Georgia')
    INTO State (state_id, state_name) VALUES (11, 'Hawaii')
    INTO State (state_id, state_name) VALUES (12, 'Idaho')
    INTO State (state_id, state_name) VALUES (13, 'Illinois')
    INTO State (state_id, state_name) VALUES (14, 'Indiana')
    INTO State (state_id, state_name) VALUES (15, 'Iowa')
    INTO State (state_id, state_name) VALUES (16, 'Kansas')
    INTO State (state_id, state_name) VALUES (17, 'Kentucky')
    INTO State (state_id, state_name) VALUES (18, 'Louisiana')
    INTO State (state_id, state_name) VALUES (19, 'Maine')
    INTO State (state_id, state_name) VALUES (20, 'Maryland')
    INTO State (state_id, state_name) VALUES (21, 'Massachusetts')
    INTO State (state_id, state_name) VALUES (22, 'Michigan')
    INTO State (state_id, state_name) VALUES (23, 'Minnesota')
    INTO State (state_id, state_name) VALUES (24, 'Mississippi')
    INTO State (state_id, state_name) VALUES (25, 'Missouri')
    INTO State (state_id, state_name) VALUES (26, 'Montana')
    INTO State (state_id, state_name) VALUES (27, 'Nebraska')
    INTO State (state_id, state_name) VALUES (28, 'Nevada')
    INTO State (state_id, state_name) VALUES (29, 'New Hampshire')
    INTO State (state_id, state_name) VALUES (30, 'New Jersey')
    INTO State (state_id, state_name) VALUES (31, 'New Mexico')
    INTO State (state_id, state_name) VALUES (32, 'New York')
    INTO State (state_id, state_name) VALUES (33, 'North Carolina')
    INTO State (state_id, state_name) VALUES (34, 'North Dakota')
    INTO State (state_id, state_name) VALUES (35, 'Ohio')
    INTO State (state_id, state_name) VALUES (36, 'Oklahoma')
    INTO State (state_id, state_name) VALUES (37, 'Oregon')
    INTO State (state_id, state_name) VALUES (38, 'Pennsylvania')
    INTO State (state_id, state_name) VALUES (39, 'Rhode Island')
    INTO State (state_id, state_name) VALUES (40, 'South Carolina')
    INTO State (state_id, state_name) VALUES (41, 'South Dakota')
    INTO State (state_id, state_name) VALUES (42, 'Tennessee')
    INTO State (state_id, state_name) VALUES (43, 'Texas')
    INTO State (state_id, state_name) VALUES (44, 'Utah')
    INTO State (state_id, state_name) VALUES (45, 'Vermont')
    INTO State (state_id, state_name) VALUES (46, 'Virginia')
    INTO State (state_id, state_name) VALUES (47, 'Washington')
    INTO State (state_id, state_name) VALUES (48, 'West Virginia')
    INTO State (state_id, state_name) VALUES (49, 'Wisconsin')
    INTO State (state_id, state_name) VALUES (50, 'Wyoming')
    INTO State (state_id, state_name) VALUES (51, 'National')
    INTO State (state_id, state_name) VALUES (52, 'United States')
    INTO State (state_id, state_name) VALUES (53, 'District of Columbia')
    INTO State (state_id, state_name) VALUES (54, 'Territories')
    INTO State (state_id, state_name) VALUES (55, 'Puerto Rico')
    INTO State (state_id, state_name) VALUES (56, 'Virgin Islands')
SELECT 1 FROM DUAL;
