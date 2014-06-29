create table voting_rights_sample.sections
(id int,
section varchar(5),
description varchar(140),
status varchar(140));


create table voting_rights_sample.states
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

create table voting_rights_sample.cities
(name varchar(25),
2013pop bigint,
area_sq_miles decimal(8,2),
state_id int);

create table voting_rights_sample.sections_states
(state_id int,
section_id int);

