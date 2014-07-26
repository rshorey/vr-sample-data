#statements to create and load data in mysql.
#you'll have to do a find-and-replace for "/path/to/file"
#to whatever the actual path to your data files is
#mysql doesn't allow me to use a variable there, sorry

create schema voting_rights;


create table voting_rights.sections
(id int,
section varchar(5),
description varchar(140),
status varchar(140));



create table voting_rights.states
(id int,
name varchar(25),
population bigint,
pct_non_hisp_white decimal(4,2),
pct_hisp decimal(4,2),
pct_black decimal(4,2),
pct_na decimal(4,2),
pct_asian decimal(4,2),
pct_hpi decimal(4,2),
pct_mixed decimal(4,2),
region varchar(1));


create table voting_rights.cities
(name varchar(25),
population bigint,
area_sq_miles decimal(8,2),
state_id int);

create table voting_rights.sections_states
(state_id int,
section_id int);


load data infile '/path/to/file/sections.csv'
into table voting_rights.sections
fields terminated by ','
lines terminated by '\r'
ignore 1 lines;

load data infile '/path/to/file/states.csv'
into table voting_rights.states
fields terminated by ','
lines terminated by '\r'
ignore 1 lines;

load data infile '/path/to/file/cities.csv'
into table voting_rights.cities
fields terminated by ','
lines terminated by '\r'
ignore 1 lines;

load data infile '/path/to/file/sections_states.csv'
into table voting_rights.sections_states
fields terminated by ','
lines terminated by '\r'
ignore 1 lines;