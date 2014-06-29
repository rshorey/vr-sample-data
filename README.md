vr-sample-data
==============

sample data about voting rights act states

created 6/14 by Rachel Shorey for Code for Progress. Note that this data is intended for learning SQL, not for learning about or evaluating the content within. The data was (not very carefully) copied from wikipedia and was not checked.

Create table statements included for demonstration purposes. Tested in MySQL, but ymmv elsewhere.

data files:
states (51, incl district of columbia, note that race percents may or may not add to 100):
id (pkey)
name
population
pct_non_hisp_white
pct_hisp
pct_black
pct_na (native american/alaskan)
pct_asian
pct_hpi (hawaiian pacific islander)
pct_mixed
region (as defined by wikipedia, IT IS NOT MY FAULT THAT THEY THINK DC IS IN THE SOUTH)

cities (largest 50 cities in the US as defined by wikipedia):
city
2013pop
area_sq_miles
state_id (foreign key)

sections (sections of the voting rights act that can apply to various states. note that in some cases a section applies to the whole state, while in others it applies to parts of the state. for the purpose of this exercise, I assumed that the state was covered if any part of it was)
id (pkey)
section
description
status

sections_states (join table between sections and states):
section_id (foreign key)
state_id (foreign key)