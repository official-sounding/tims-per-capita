insert into population (city, province, population) values ('Valemount', 'British Columbia', 1052) -- https://en.wikipedia.org/wiki/Valemount
insert into population (city, province, population) values ('Buffalo Narrows', 'Saskatchewan', 1014) -- https://en.wikipedia.org/wiki/Buffalo_Narrows
insert into population (city, province, population) values ('Cavendish', 'Prince Edward Island', 270) -- https://fr.wikipedia.org/wiki/Cavendish_(%C3%8Ele-du-Prince-%C3%89douard)
insert into population (city, province, population) values ('Borden-Carleton', 'Prince Edward Island', 788) -- https://en.wikipedia.org/wiki/Borden-Carleton
insert into population (city, province, population) values ('Cross Lake', 'Manitoba', 521) -- https://en.wikipedia.org/wiki/Cross_Lake,_Manitoba
insert into population (city, province, population) values ('Red Sucker Lake', 'Manitoba', 15) -- https://en.wikipedia.org/wiki/Red_Sucker_Lake,_Manitoba
insert into population (city, province, population) values ('Doaktown', 'New Brunswick', 808) -- https://en.wikipedia.org/wiki/Doaktown
insert into population (city, province, population) values ('Hartland', 'New Brunswick', 933) -- https://en.wikipedia.org/wiki/Hartland,_New_Brunswick
insert into population (city, province, population) values ('Whitbourne', 'Newfoundland and Labrador', 955) -- https://en.wikipedia.org/wiki/Whitbourne,_Newfoundland_and_Labrador
insert into population (city, province, population) values ('Sanirajak', 'Nunavut', 891) -- https://en.wikipedia.org/wiki/Sanirajak
insert into population (city, province, population) values ('Baddeck', 'Nova Scotia', 818) --https://en.wikipedia.org/wiki/Baddeck
insert into population (city, province, population) values ('Bible Hill', 'Nova Scotia', 818) --https://en.wikipedia.org/wiki/Baddeck
insert into population (city, province, population) values ('Kuujjurapik','Quebec',792) -- https://en.wikipedia.org/wiki/Kuujjuarapik
insert into population (city, province, population) values ('Saint-louis-de-blandford','Quebec',1076) --https://en.wikipedia.org/wiki/Saint-Louis-de-Blandford

update population set Province = 'Manitoba' where id = 281
update population set province = 'New Brunswick' where id = 1326
update population set Province = 'Quebec' where id = 670

update location set population_id = 731 where City = 'Grand Falls'
update location set population_id = 719 where City = 'Rossville'
update location set population_id = 13 where City = 'Dartmouth'
update location set population_id = 13 where City = 'Lower Sackville'
update location set population_id = 13 where City = 'Eastern Passage'
update location set population_id = 13 where City = 'Upper Tantallon'
update location set population_id = 13 where City = 'Goffs'
update location set population_id = 13 where City = 'Goodwood'
update location set population_id = 13 where City = 'Fall River'
update location set population_id = 13 where City = 'Shearwater'
update location set population_id = 13 where City = 'Timberlea'
update location set population_id = 625 where City = 'Springhill'
update location set population_id = 13 where City = 'Cole Harbour'
update location set population_id = 13 where City = 'Musquodoboit Harbour'
update location set population_id = 13 where City = 'Middle Sackville'
update location set population_id = 13 where City = 'Porter''s Lake'
update location set population_id = 62 where City = 'Reserve Mines'
update location set population_id = 62 where City = 'Florence'
update location set population_id = 62 where City = 'Sydney'
update location set population_id = 62 where City = 'North Sydney'
update location set population_id = 62 where City = 'Glace Bay'
update location set population_id = 62 where City = 'Dominion'
update location set population_id = 62 where City = 'New Waterford'
update location set population_id = 753 where City = 'Afton Station' 
update location set population_id = 17 where City = 'Vaughn' -- Fix Typo
update location set population_id = 5 where City = 'Orleans' -- Ottawa
update location set population_id = 5 where City = 'Kanata' -- Ottawa
update location set population_id = 396 where City = 'Iroquois' -- 
update location set population_id = 1 where City = 'East York' -- Toronto
update location set population_id = 1114 where City = 'Haliburton' -- Algonquin Highlands
update location set population_id = 80 where City = 'Bobcaygeon' -- Kawartha Lakes
update location set population_id = 11 where City = 'Ancaster' -- Hamilton
update location set population_id = 59 where City = 'Catham' -- Chatham-Kent
update location set population_id = 2009 where City = 'Buffalo Narrows'
update location set population_id = 149 where City = 'Bushell Park' -- Moose Jaw
update location set population_id = 2010 where City = 'Cavendish'
update location set population_id = 122 where City = 'Winsloe' -- Charlottetown
update location set population_id = 350, City = 'Stratford' where City = 'Strattford' -- fix typo
update location set population_id = 2011 where City = 'Borden-carleton'
update location set population_id = 1311 where City = 'Ashern' -- West Interlake
update location set population_id = 2012 where City = 'Cross Lake' 
update location set population_id = 965 where City = 'Gladstone' -- Gladstone-Westlake
update location set population_id = 1072 where City = 'Island Lake' -- Garden Hill First Nation
update location set population_id = 281 where City = 'Navin' -- Springfield
update location set population_id = 281 where City = 'Oakbank' -- Springfield
update location set population_id = 1347 where City = 'Oxford House' -- Oxford House 24
update location set population_id = 494 where City = 'Oak Bluff' -- Macdonald
update location set population_id = 2013 where City = 'Red Sucker Lake'
update location set population_id = 499 where City = 'Stony Mountain' -- Rockwood
update location set population_id = 1056 where City = 'Cap-pelé' -- Cap-pele
update location set population_id = 2014 where City = 'Doaktown'
update location set population_id = 2015 where City = 'Hartland'
update location set population_id = 1437 where City = 'Petit Rocher'
update location set population_id = 1511 where City = 'Saint Antoine'
update location set population_id = 2016 where City = 'Whitbourne'
update location set population_id = 1831 where City = 'Saint Leonard'
update location set population_id = 1326 where City = 'Saint Quentin'
update location set population_id = 794 where City = 'St Stephen'
update location set population_id = 295 where City = 'Tracadie-sheila' 
update location set population_id = 1067 where City = 'Bishops Falls' 
update location set population_id = 173 where City = 'Kelligrews'
update location set population_id = 48 where City = 'Kilbride' -- St. John's
update location set population_id = 1372 where City = 'Saint Anthony'
update location set population_id = 2017 where City = 'Hall Beach'
update location set population_id = 1017 where City = 'Northern Arviat'
update location set population_id = 68 where City = 'St-jean-sur-richelieu'
update location set population_id = 2018 where City = 'Baddeck'
update location set population_id = 638 where City = 'Barrington Passage' -- Barrington
update location set population_id = 230 where City = 'Bible Hill' -- Colchester
update location set population_id = 767 where City = 'Bridgetown'
update location set population_id = 230 where City = 'Brookfield'
update location set population_id = 201 where City = 'Coldbrook'
update location set population_id = 230 where City = 'Debert'
update location set population_id = 181 where City = 'Elmsdale'
update location set population_id = 181 where City = 'Enfield' 
update location set population_id = 919 where City = 'Eskasoni'
update location set population_id = 230 where City = 'Greenwood'
update location set population_id = 247 where City = 'Hantsport'
update location set population_id = 181 where City = 'Hardwood Lands'
update location set population_id = 476 where City = 'Havre Boucher'
update location set population_id = 201 where City = 'New Minas'
update location set population_id = 431 where City = 'Liverpool'
update location set population_id = 230 where City = 'Masstown'
update location set population_id = 1902 where City = 'Membertou'
update location set population_id = 181 where City = 'Mount Uniacke'
update location set population_id = 625 where City = 'Parrsboro'
update location set population_id = 851 where City = 'Saint Peters'
update location set population_id = 746 where City = 'Whycocomagh'

-- Quebec
update location set population_id = 1125 where City = 'St-bruno' 
update location set population_id = 157 where City = 'St-georges'
update location set population_id = 388 where City = 'St-sauveur'
update location set population_id = 185 where City = 'Sainte-thérèse'
update location set population_id = 125 where City = 'St-eustache'
update location set population_id = 2 where City = 'Saint-laurent'
update location set population_id = 40 where City = 'Saint-nicolas'
update location set population_id = 23 where City Like '%hubert%'
update location set population_id = 79 where City = 'Saint-jérôme'
update location set population_id = 386 where City = 'Ste-agathe-des-monts'
update location set population_id = 2 where City = 'Lachine'
update location set population_id = 12 where City = 'Beauport'
update location set population_id = 2 where City = 'Pointe-aux-trembles'
update location set population_id = 183 where City = 'Saint-lin-laurentides'
update location set population_id = 148 where City = 'Sorel'
update location set population_id = 110 where City = 'Châteauguay'
update location set population_id = 310 where City = 'Gaspé'
update location set population_id = 43 where City = 'Alouette'
update location set population_id = 455 where City = 'Stoneham'
update location set population_id = 254 where City = 'Ste-sophie'
update location set population_id = 792 where City = 'Rivière-rouge'
update location set population_id = 381 where City = 'Cap-aux-meules'
update location set population_id = 464 where City = 'STE-CAT-J-CAR'
update location set population_id = 279 where City = 'Ste-catherine'
update location set population_id = 739 where City = 'Chisisabi'
update location set population_id = 568 where City = 'Coteau Du Lac'
update location set population_id = 1006 where City = 'Deschambault'
update location set population_id = 1205 where City = 'St-mathieu De Laprairie'
update location set population_id = 1638 where City = 'St-bernard-de-lacolle'
update location set population_id = 1265 where City = 'Sainte-anne-du-sault'
update location set population_id = 1055 where City = 'Sainte-anne-de-beaupré'
update location set population_id = 1303 where City = 'Papineau'
update location set population_id = 23 where City = 'Greenfield Park'
update location set population_id = 2019 where City = 'Kuujjurapik'
update location set population_id = 168 where City = 'Saint Julie'
update location set population_id = 340 where City = 'Saint Amable'
update location set population_id = 672 where City = 'Saint Cesaire'
update location set population_id = 756 where City = 'Saint Donat-de-montcalm'
update location set population_id = 43 where City = 'La Baie'
update location set population_id = 49 where City = 'La Plaine'
update location set population_id = 49 where City = 'Lachenaie'
update location set population_id = 76 where City = 'Le Gardeur'
update location set population_id = 40 where City = 'Pintendre'
update location set population_id = 876 where City = 'Metabetchouan-lac-a-la-croix'
update location set population_id = 285 where City = 'Saint-charles-borromée'
update location set population_id = 78 where City = 'Saint-charles-de-drummond'
update location set population_id = 816 where City = 'Saint-etienne Des Gres'
update location set population_id = 2020 where City = 'Saint-louis-de-blandford'
update location set population_id = 670 where City = 'Saint-paul-de-joliette'
update location set population_id = 301 where City = 'Sainte-anne Des Plaines'
update location set population_id = 17 where City = 'Concord'