vr-sample-data
==============

Sample data about the Voting Rights Act
----------------------------------------

originally created 6/14 by Rachel Shorey for Code for Progress. Note that this data is intended for learning SQL, not for learning about or evaluating the content within. The data was (not very carefully) copied from wikipedia and was not checked.

Create table statements included for demonstration purposes. Tested in MySQL, but ymmv elsewhere.

data files:


**states**: 51, incl district of columbia, note that race percents may or may not add to 100


|field                      | description                     | type |
|---------------------------|---------------------------------|----------------|
| id                        | pkey                            | int(11)|
| name                      | state name                      | varchar(25)|
| population                | state's population              | bigint(20) |
| pct_non_hisp_white     | pct white (non-hispanic)        | decimal(4,2) |
| pct_hisp                 | pct hispanic                    | decimal(4,2) |
| pct_black                | pct black                       |decimal(4,2) |
| pct_na                   | pct native american/alaskan     |decimal(4,2) |
| pct_asian                | pct asian                       |decimal(4,2) |
| pct_hpi                  | pct hawaiian pacific islander   |decimal(4,2) |
| pct_mixed                | pct mixed race                  |decimal(4,2) |
| region                    | north, south, midwest, west*    |varchar(1)|



*as defined by wikipedia, IT IS NOT MY FAULT THAT THEY THINK DC IS IN THE SOUTH



**cities**: largest 50 cities in the US as defined by wikipedia


field|description|type
-----|-----------|----
city|city's name| varchar(25)
2013pop| population in 2013 | bigint(20)
area_sq_miles | city's land area in mi^2| decimal(8,2)
state_id | foreign key to state table | int(11)



**sections**: sections of the voting rights act that can apply to various states. note that in some cases a section applies to the whole state, while in others it applies to parts of the state. for the purpose of this exercise, I assumed that the state was covered if any part of it was


field|description|type
-----|-----------|----
id | pkey | int(11)
section | name of the VRA section | varchar(5)
description | text explaining what it does | varchar(140)
status | pithy remarks about supreme court | varchar(140)



**sections_states**: join table between sections and states


field|description|type
-----|-----------|----
section_id | foreign key into sections | varchar(11)
state_id | foreign key into states | varchar(11)

