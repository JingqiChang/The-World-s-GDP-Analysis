show databases;
create database co2;
use co2;
create table gdp_per_capita(
country_name varchar(60) not null unique,
country_code text,
indicator_name text,
indicator_code text,
gdp_p_1960 decimal(15,2),
gdp_p_1961 decimal(15,2),
gdp_p_1962 decimal(15,2),
gdp_p_1963 decimal(15,2),
gdp_p_1964 decimal(15,2),
gdp_p_1965 decimal(15,2),
gdp_p_1966 decimal(15,2),
gdp_p_1967 decimal(15,2),
gdp_p_1968 decimal(15,2),
gdp_p_1969 decimal(15,2),
gdp_p_1970 decimal(15,2),
gdp_p_1971 decimal(15,2),
gdp_p_1972 decimal(15,2),
gdp_p_1973 decimal(15,2),
gdp_p_1974 decimal(15,2),
gdp_p_1975 decimal(15,2),
gdp_p_1976 decimal(15,2),
gdp_p_1977 decimal(15,2),
gdp_p_1978 decimal(15,2),
gdp_p_1979 decimal(15,2),
gdp_p_1980 decimal(15,2),
gdp_p_1981 decimal(15,2),
gdp_p_1982 decimal(15,2),
gdp_p_1983 decimal(15,2),
gdp_p_1984 decimal(15,2),
gdp_p_1985 decimal(15,2),
gdp_p_1986 decimal(15,2),
gdp_p_1987 decimal(15,2),
gdp_p_1988 decimal(15,2),
gdp_p_1989 decimal(15,2),
gdp_p_1990 decimal(15,2),
gdp_p_1991 decimal(15,2),
gdp_p_1992 decimal(15,2),
gdp_p_1993 decimal(15,2),
gdp_p_1994 decimal(15,2),
gdp_p_1995 decimal(15,2),
gdp_p_1996 decimal(15,2),
gdp_p_1997 decimal(15,2),
gdp_p_1998 decimal(15,2),
gdp_p_1999 decimal(15,2),
gdp_p_2000 decimal(15,2),
gdp_p_2001 decimal(15,2),
gdp_p_2002 decimal(15,2),
gdp_p_2003 decimal(15,2),
gdp_p_2004 decimal(15,2),
gdp_p_2005 decimal(15,2),
gdp_p_2006 decimal(15,2),
gdp_p_2007 decimal(15,2),
gdp_p_2008 decimal(15,2),
gdp_p_2009 decimal(15,2),
gdp_p_2010 decimal(15,2),
gdp_p_2011 decimal(15,2),
gdp_p_2012 decimal(15,2),
gdp_p_2013 decimal(15,2),
gdp_p_2014 decimal(15,2),
gdp_p_2015 decimal(15,2),
gdp_p_2016 decimal(15,2),
gdp_p_2017 decimal(15,2),
gdp_p_2018 decimal(15,2),
gdp_p_2019 decimal(15,2),
gdp_p_2020 decimal(15,2)
);

drop table gdp_per_capita;

describe gdp_per_capita;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GDP_Per_Capita\\API_NY.GDP.PCAP.CD_DS2_en_csv_v2_2627294.csv'
into table gdp_per_capita
fields terminated by ',' 
optionally enclosed by '"' 
enclosed by '"'
lines terminated by '\r\n'
ignore 5 lines
(country_name, country_code, indicator_name, indicator_code,
@vgdp_p_1960, @vgdp_p_1961, @vgdp_p_1962, @vgdp_p_1963, @vgdp_p_1964, @vgdp_p_1965, @vgdp_p_1966, @vgdp_p_1967, @vgdp_p_1968, @vgdp_p_1969, 
@vgdp_p_1970, @vgdp_p_1971, @vgdp_p_1972, @vgdp_p_1973, @vgdp_p_1974, @vgdp_p_1975, @vgdp_p_1976, @vgdp_p_1977, @vgdp_p_1978, @vgdp_p_1979,
@vgdp_p_1980, @vgdp_p_1981, @vgdp_p_1982, @vgdp_p_1983, @vgdp_p_1984, @vgdp_p_1985, @vgdp_p_1986, @vgdp_p_1987, @vgdp_p_1988, @vgdp_p_1989,
@vgdp_p_1990, @vgdp_p_1991, @vgdp_p_1992, @vgdp_p_1993, @vgdp_p_1994, @vgdp_p_1995, @vgdp_p_1996, @vgdp_p_1997, @vgdp_p_1998, @vgdp_p_1999, 
@vgdp_p_2000, @vgdp_p_2001, @vgdp_p_2002, @vgdp_p_2003, @vgdp_p_2004, @vgdp_p_2005, @vgdp_p_2006, @vgdp_p_2007, @vgdp_p_2008, @vgdp_p_2009, 
@vgdp_p_2010, @vgdp_p_2011, @vgdp_p_2012, @vgdp_p_2013, @vgdp_p_2014, @vgdp_p_2015, @vgdp_p_2016, @vgdp_p_2017, @vgdp_p_2018, @vgdp_p_2019, @vgdp_p_2020)
set
gdp_p_1960=nullif(@vgdp_p_1960,''),gdp_p_1961=nullif(@vgdp_p_1961,''),gdp_p_1962=nullif(@vgdp_p_1962,''),gdp_p_1963=nullif(@vgdp_p_1963,''),gdp_p_1964=nullif(@vgdp_p_1964,''),
gdp_p_1965=nullif(@vgdp_p_1965,''),gdp_p_1966=nullif(@vgdp_p_1966,''),gdp_p_1967=nullif(@vgdp_p_1967,''),gdp_p_1968=nullif(@vgdp_p_1968,''),gdp_p_1969=nullif(@vgdp_p_1969,''),
gdp_p_1970=nullif(@vgdp_p_1970,''),gdp_p_1971=nullif(@vgdp_p_1971,''),gdp_p_1972=nullif(@vgdp_p_1972,''),gdp_p_1973=nullif(@vgdp_p_1973,''),gdp_p_1974=nullif(@vgdp_p_1974,''),
gdp_p_1975=nullif(@vgdp_p_1975,''),gdp_p_1976=nullif(@vgdp_p_1976,''),gdp_p_1977=nullif(@vgdp_p_1977,''),gdp_p_1978=nullif(@vgdp_p_1978,''),gdp_p_1979=nullif(@vgdp_p_1979,''),
gdp_p_1980=nullif(@vgdp_p_1980,''),gdp_p_1981=nullif(@vgdp_p_1981,''),gdp_p_1982=nullif(@vgdp_p_1982,''),gdp_p_1983=nullif(@vgdp_p_1983,''),gdp_p_1984=nullif(@vgdp_p_1984,''),
gdp_p_1985=nullif(@vgdp_p_1985,''),gdp_p_1986=nullif(@vgdp_p_1986,''),gdp_p_1987=nullif(@vgdp_p_1987,''),gdp_p_1988=nullif(@vgdp_p_1988,''),gdp_p_1989=nullif(@vgdp_p_1989,''),
gdp_p_1990=nullif(@vgdp_p_1990,''),gdp_p_1991=nullif(@vgdp_p_1991,''),gdp_p_1992=nullif(@vgdp_p_1992,''),gdp_p_1993=nullif(@vgdp_p_1993,''),gdp_p_1994=nullif(@vgdp_p_1994,''),
gdp_p_1995=nullif(@vgdp_p_1995,''),gdp_p_1996=nullif(@vgdp_p_1996,''),gdp_p_1997=nullif(@vgdp_p_1997,''),gdp_p_1998=nullif(@vgdp_p_1998,''),gdp_p_1999=nullif(@vgdp_p_1999,''),
gdp_p_2000=nullif(@vgdp_p_2000,''),gdp_p_2001=nullif(@vgdp_p_2001,''),gdp_p_2002=nullif(@vgdp_p_2002,''),gdp_p_2003=nullif(@vgdp_p_2003,''),gdp_p_2004=nullif(@vgdp_p_2004,''),
gdp_p_2005=nullif(@vgdp_p_2005,''),gdp_p_2006=nullif(@vgdp_p_2006,''),gdp_p_2007=nullif(@vgdp_p_2007,''),gdp_p_2008=nullif(@vgdp_p_2008,''),gdp_p_2009=nullif(@vgdp_p_2009,''),
gdp_p_2010=nullif(@vgdp_p_2010,''),gdp_p_2011=nullif(@vgdp_p_2011,''),gdp_p_2012=nullif(@vgdp_p_2012,''),gdp_p_2013=nullif(@vgdp_p_2013,''),gdp_p_2014=nullif(@vgdp_p_2014,''),
gdp_p_2015=nullif(@vgdp_p_2015,''),gdp_p_2016=nullif(@vgdp_p_2016,''),gdp_p_2017=nullif(@vgdp_p_2017,''),gdp_p_2018=nullif(@vgdp_p_2018,''),gdp_p_2019=nullif(@vgdp_p_2019,''),
gdp_p_2020=nullif(@vgdp_p_2020,'')
;

select * from gdp_per_capita;

create table co2_per_capita(
country_name varchar(60) not null unique,
country_code text,
indicator_name text,
indicator_code text,
co2_p_1960 decimal(15,7),
co2_p_1961 decimal(15,7),
co2_p_1962 decimal(15,7),
co2_p_1963 decimal(15,7),
co2_p_1964 decimal(15,7),
co2_p_1965 decimal(15,7),
co2_p_1966 decimal(15,7),
co2_p_1967 decimal(15,2),
co2_p_1968 decimal(15,7),
co2_p_1969 decimal(15,7),
co2_p_1970 decimal(15,7),
co2_p_1971 decimal(15,7),
co2_p_1972 decimal(15,7),
co2_p_1973 decimal(15,7),
co2_p_1974 decimal(15,7),
co2_p_1975 decimal(15,7),
co2_p_1976 decimal(15,7),
co2_p_1977 decimal(15,7),
co2_p_1978 decimal(15,7),
co2_p_1979 decimal(15,7),
co2_p_1980 decimal(15,7),
co2_p_1981 decimal(15,7),
co2_p_1982 decimal(15,7),
co2_p_1983 decimal(15,7),
co2_p_1984 decimal(15,7),
co2_p_1985 decimal(15,7),
co2_p_1986 decimal(15,7),
co2_p_1987 decimal(15,7),
co2_p_1988 decimal(15,7),
co2_p_1989 decimal(15,7),
co2_p_1990 decimal(15,7),
co2_p_1991 decimal(15,7),
co2_p_1992 decimal(15,7),
co2_p_1993 decimal(15,7),
co2_p_1994 decimal(15,7),
co2_p_1995 decimal(15,7),
co2_p_1996 decimal(15,7),
co2_p_1997 decimal(15,7),
co2_p_1998 decimal(15,7),
co2_p_1999 decimal(15,7),
co2_p_2000 decimal(15,7),
co2_p_2001 decimal(15,7),
co2_p_2002 decimal(15,7),
co2_p_2003 decimal(15,7),
co2_p_2004 decimal(15,7),
co2_p_2005 decimal(15,7),
co2_p_2006 decimal(15,7),
co2_p_2007 decimal(15,7),
co2_p_2008 decimal(15,7),
co2_p_2009 decimal(15,7),
co2_p_2010 decimal(15,7),
co2_p_2011 decimal(15,7),
co2_p_2012 decimal(15,7),
co2_p_2013 decimal(15,7),
co2_p_2014 decimal(15,7),
co2_p_2015 decimal(15,7),
co2_p_2016 decimal(15,7),
co2_p_2017 decimal(15,7),
co2_p_2018 decimal(15,7),
co2_p_2019 decimal(15,7),
co2_p_2020 decimal(15,7)
);

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CO2_Emissions_Per_Capita\\API_EN.ATM.CO2E.PC_DS2_en_csv_v2_2593773.csv'
into table co2_per_capita
fields terminated by ',' 
optionally enclosed by '"' 
enclosed by '"'
lines terminated by '\r\n'
ignore 5 lines
(country_name, country_code, indicator_name, indicator_code,
@vco2_p_1960, @vco2_p_1961, @vco2_p_1962, @vco2_p_1963, @vco2_p_1964, @vco2_p_1965, @vco2_p_1966, @vco2_p_1967, @vco2_p_1968, @vco2_p_1969, 
@vco2_p_1970, @vco2_p_1971, @vco2_p_1972, @vco2_p_1973, @vco2_p_1974, @vco2_p_1975, @vco2_p_1976, @vco2_p_1977, @vco2_p_1978, @vco2_p_1979,
@vco2_p_1980, @vco2_p_1981, @vco2_p_1982, @vco2_p_1983, @vco2_p_1984, @vco2_p_1985, @vco2_p_1986, @vco2_p_1987, @vco2_p_1988, @vco2_p_1989,
@vco2_p_1990, @vco2_p_1991, @vco2_p_1992, @vco2_p_1993, @vco2_p_1994, @vco2_p_1995, @vco2_p_1996, @vco2_p_1997, @vco2_p_1998, @vco2_p_1999, 
@vco2_p_2000, @vco2_p_2001, @vco2_p_2002, @vco2_p_2003, @vco2_p_2004, @vco2_p_2005, @vco2_p_2006, @vco2_p_2007, @vco2_p_2008, @vco2_p_2009, 
@vco2_p_2010, @vco2_p_2011, @vco2_p_2012, @vco2_p_2013, @vco2_p_2014, @vco2_p_2015, @vco2_p_2016, @vco2_p_2017, @vco2_p_2018, @vco2_p_2019, @vco2_p_2020)
set
co2_p_1960=nullif(@vco2_p_1960,''),co2_p_1961=nullif(@vco2_p_1961,''),co2_p_1962=nullif(@vco2_p_1962,''),co2_p_1963=nullif(@vco2_p_1963,''),co2_p_1964=nullif(@vco2_p_1964,''),
co2_p_1965=nullif(@vco2_p_1965,''),co2_p_1966=nullif(@vco2_p_1966,''),co2_p_1967=nullif(@vco2_p_1967,''),co2_p_1968=nullif(@vco2_p_1968,''),co2_p_1969=nullif(@vco2_p_1969,''),
co2_p_1970=nullif(@vco2_p_1970,''),co2_p_1971=nullif(@vco2_p_1971,''),co2_p_1972=nullif(@vco2_p_1972,''),co2_p_1973=nullif(@vco2_p_1973,''),co2_p_1974=nullif(@vco2_p_1974,''),
co2_p_1975=nullif(@vco2_p_1975,''),co2_p_1976=nullif(@vco2_p_1976,''),co2_p_1977=nullif(@vco2_p_1977,''),co2_p_1978=nullif(@vco2_p_1978,''),co2_p_1979=nullif(@vco2_p_1979,''),
co2_p_1980=nullif(@vco2_p_1980,''),co2_p_1981=nullif(@vco2_p_1981,''),co2_p_1982=nullif(@vco2_p_1982,''),co2_p_1983=nullif(@vco2_p_1983,''),co2_p_1984=nullif(@vco2_p_1984,''),
co2_p_1985=nullif(@vco2_p_1985,''),co2_p_1986=nullif(@vco2_p_1986,''),co2_p_1987=nullif(@vco2_p_1987,''),co2_p_1988=nullif(@vco2_p_1988,''),co2_p_1989=nullif(@vco2_p_1989,''),
co2_p_1990=nullif(@vco2_p_1990,''),co2_p_1991=nullif(@vco2_p_1991,''),co2_p_1992=nullif(@vco2_p_1992,''),co2_p_1993=nullif(@vco2_p_1993,''),co2_p_1994=nullif(@vco2_p_1994,''),
co2_p_1995=nullif(@vco2_p_1995,''),co2_p_1996=nullif(@vco2_p_1996,''),co2_p_1997=nullif(@vco2_p_1997,''),co2_p_1998=nullif(@vco2_p_1998,''),co2_p_1999=nullif(@vco2_p_1999,''),
co2_p_2000=nullif(@vco2_p_2000,''),co2_p_2001=nullif(@vco2_p_2001,''),co2_p_2002=nullif(@vco2_p_2002,''),co2_p_2003=nullif(@vco2_p_2003,''),co2_p_2004=nullif(@vco2_p_2004,''),
co2_p_2005=nullif(@vco2_p_2005,''),co2_p_2006=nullif(@vco2_p_2006,''),co2_p_2007=nullif(@vco2_p_2007,''),co2_p_2008=nullif(@vco2_p_2008,''),co2_p_2009=nullif(@vco2_p_2009,''),
co2_p_2010=nullif(@vco2_p_2010,''),co2_p_2011=nullif(@vco2_p_2011,''),co2_p_2012=nullif(@vco2_p_2012,''),co2_p_2013=nullif(@vco2_p_2013,''),co2_p_2014=nullif(@vco2_p_2014,''),
co2_p_2015=nullif(@vco2_p_2015,''),co2_p_2016=nullif(@vco2_p_2016,''),co2_p_2017=nullif(@vco2_p_2017,''),co2_p_2018=nullif(@vco2_p_2018,''),co2_p_2019=nullif(@vco2_p_2019,''),
co2_p_2020=nullif(@vco2_p_2020,'')
;

select * from co2_per_capita;

create table fossil_fuel_energy_perc(
country_name varchar(60) not null unique,
country_code text,
indicator_name text,
indicator_code text,
fuel_perc_1960 decimal(15,7),
fuel_perc_1961 decimal(15,7),
fuel_perc_1962 decimal(15,7),
fuel_perc_1963 decimal(15,7),
fuel_perc_1964 decimal(15,7),
fuel_perc_1965 decimal(15,7),
fuel_perc_1966 decimal(15,7),
fuel_perc_1967 decimal(15,2),
fuel_perc_1968 decimal(15,7),
fuel_perc_1969 decimal(15,7),
fuel_perc_1970 decimal(15,7),
fuel_perc_1971 decimal(15,7),
fuel_perc_1972 decimal(15,7),
fuel_perc_1973 decimal(15,7),
fuel_perc_1974 decimal(15,7),
fuel_perc_1975 decimal(15,7),
fuel_perc_1976 decimal(15,7),
fuel_perc_1977 decimal(15,7),
fuel_perc_1978 decimal(15,7),
fuel_perc_1979 decimal(15,7),
fuel_perc_1980 decimal(15,7),
fuel_perc_1981 decimal(15,7),
fuel_perc_1982 decimal(15,7),
fuel_perc_1983 decimal(15,7),
fuel_perc_1984 decimal(15,7),
fuel_perc_1985 decimal(15,7),
fuel_perc_1986 decimal(15,7),
fuel_perc_1987 decimal(15,7),
fuel_perc_1988 decimal(15,7),
fuel_perc_1989 decimal(15,7),
fuel_perc_1990 decimal(15,7),
fuel_perc_1991 decimal(15,7),
fuel_perc_1992 decimal(15,7),
fuel_perc_1993 decimal(15,7),
fuel_perc_1994 decimal(15,7),
fuel_perc_1995 decimal(15,7),
fuel_perc_1996 decimal(15,7),
fuel_perc_1997 decimal(15,7),
fuel_perc_1998 decimal(15,7),
fuel_perc_1999 decimal(15,7),
fuel_perc_2000 decimal(15,7),
fuel_perc_2001 decimal(15,7),
fuel_perc_2002 decimal(15,7),
fuel_perc_2003 decimal(15,7),
fuel_perc_2004 decimal(15,7),
fuel_perc_2005 decimal(15,7),
fuel_perc_2006 decimal(15,7),
fuel_perc_2007 decimal(15,7),
fuel_perc_2008 decimal(15,7),
fuel_perc_2009 decimal(15,7),
fuel_perc_2010 decimal(15,7),
fuel_perc_2011 decimal(15,7),
fuel_perc_2012 decimal(15,7),
fuel_perc_2013 decimal(15,7),
fuel_perc_2014 decimal(15,7),
fuel_perc_2015 decimal(15,7),
fuel_perc_2016 decimal(15,7),
fuel_perc_2017 decimal(15,7),
fuel_perc_2018 decimal(15,7),
fuel_perc_2019 decimal(15,7),
fuel_perc_2020 decimal(15,7)
);

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Fossil_Fuel_Energy_Cons_Percent_Total\\API_EG.USE.COMM.FO.ZS_DS2_en_csv_v2_2593136.csv'
into table fossil_fuel_energy_perc
fields terminated by ',' 
enclosed by '"'
lines terminated by '\r\n'
ignore 5 lines
(country_name, country_code, indicator_name, indicator_code,
@vfuel_perc_1960, @vfuel_perc_1961, @vfuel_perc_1962, @vfuel_perc_1963, @vfuel_perc_1964, @vfuel_perc_1965, @vfuel_perc_1966, @vfuel_perc_1967, @vfuel_perc_1968, @vfuel_perc_1969, 
@vfuel_perc_1970, @vfuel_perc_1971, @vfuel_perc_1972, @vfuel_perc_1973, @vfuel_perc_1974, @vfuel_perc_1975, @vfuel_perc_1976, @vfuel_perc_1977, @vfuel_perc_1978, @vfuel_perc_1979,
@vfuel_perc_1980, @vfuel_perc_1981, @vfuel_perc_1982, @vfuel_perc_1983, @vfuel_perc_1984, @vfuel_perc_1985, @vfuel_perc_1986, @vfuel_perc_1987, @vfuel_perc_1988, @vfuel_perc_1989,
@vfuel_perc_1990, @vfuel_perc_1991, @vfuel_perc_1992, @vfuel_perc_1993, @vfuel_perc_1994, @vfuel_perc_1995, @vfuel_perc_1996, @vfuel_perc_1997, @vfuel_perc_1998, @vfuel_perc_1999, 
@vfuel_perc_2000, @vfuel_perc_2001, @vfuel_perc_2002, @vfuel_perc_2003, @vfuel_perc_2004, @vfuel_perc_2005, @vfuel_perc_2006, @vfuel_perc_2007, @vfuel_perc_2008, @vfuel_perc_2009, 
@vfuel_perc_2010, @vfuel_perc_2011, @vfuel_perc_2012, @vfuel_perc_2013, @vfuel_perc_2014, @vfuel_perc_2015, @vfuel_perc_2016, @vfuel_perc_2017, @vfuel_perc_2018, @vfuel_perc_2019, @vfuel_perc_2020)
set
fuel_perc_1960=nullif(@vfuel_perc_1960,''),fuel_perc_1961=nullif(@vfuel_perc_1961,''),fuel_perc_1962=nullif(@vfuel_perc_1962,''),fuel_perc_1963=nullif(@vfuel_perc_1963,''),fuel_perc_1964=nullif(@vfuel_perc_1964,''),
fuel_perc_1965=nullif(@vfuel_perc_1965,''),fuel_perc_1966=nullif(@vfuel_perc_1966,''),fuel_perc_1967=nullif(@vfuel_perc_1967,''),fuel_perc_1968=nullif(@vfuel_perc_1968,''),fuel_perc_1969=nullif(@vfuel_perc_1969,''),
fuel_perc_1970=nullif(@vfuel_perc_1970,''),fuel_perc_1971=nullif(@vfuel_perc_1971,''),fuel_perc_1972=nullif(@vfuel_perc_1972,''),fuel_perc_1973=nullif(@vfuel_perc_1973,''),fuel_perc_1974=nullif(@vfuel_perc_1974,''),
fuel_perc_1975=nullif(@vfuel_perc_1975,''),fuel_perc_1976=nullif(@vfuel_perc_1976,''),fuel_perc_1977=nullif(@vfuel_perc_1977,''),fuel_perc_1978=nullif(@vfuel_perc_1978,''),fuel_perc_1979=nullif(@vfuel_perc_1979,''),
fuel_perc_1980=nullif(@vfuel_perc_1980,''),fuel_perc_1981=nullif(@vfuel_perc_1981,''),fuel_perc_1982=nullif(@vfuel_perc_1982,''),fuel_perc_1983=nullif(@vfuel_perc_1983,''),fuel_perc_1984=nullif(@vfuel_perc_1984,''),
fuel_perc_1985=nullif(@vfuel_perc_1985,''),fuel_perc_1986=nullif(@vfuel_perc_1986,''),fuel_perc_1987=nullif(@vfuel_perc_1987,''),fuel_perc_1988=nullif(@vfuel_perc_1988,''),fuel_perc_1989=nullif(@vfuel_perc_1989,''),
fuel_perc_1990=nullif(@vfuel_perc_1990,''),fuel_perc_1991=nullif(@vfuel_perc_1991,''),fuel_perc_1992=nullif(@vfuel_perc_1992,''),fuel_perc_1993=nullif(@vfuel_perc_1993,''),fuel_perc_1994=nullif(@vfuel_perc_1994,''),
fuel_perc_1995=nullif(@vfuel_perc_1995,''),fuel_perc_1996=nullif(@vfuel_perc_1996,''),fuel_perc_1997=nullif(@vfuel_perc_1997,''),fuel_perc_1998=nullif(@vfuel_perc_1998,''),fuel_perc_1999=nullif(@vfuel_perc_1999,''),
fuel_perc_2000=nullif(@vfuel_perc_2000,''),fuel_perc_2001=nullif(@vfuel_perc_2001,''),fuel_perc_2002=nullif(@vfuel_perc_2002,''),fuel_perc_2003=nullif(@vfuel_perc_2003,''),fuel_perc_2004=nullif(@vfuel_perc_2004,''),
fuel_perc_2005=nullif(@vfuel_perc_2005,''),fuel_perc_2006=nullif(@vfuel_perc_2006,''),fuel_perc_2007=nullif(@vfuel_perc_2007,''),fuel_perc_2008=nullif(@vfuel_perc_2008,''),fuel_perc_2009=nullif(@vfuel_perc_2009,''),
fuel_perc_2010=nullif(@vfuel_perc_2010,''),fuel_perc_2011=nullif(@vfuel_perc_2011,''),fuel_perc_2012=nullif(@vfuel_perc_2012,''),fuel_perc_2013=nullif(@vfuel_perc_2013,''),fuel_perc_2014=nullif(@vfuel_perc_2014,''),
fuel_perc_2015=nullif(@vfuel_perc_2015,''),fuel_perc_2016=nullif(@vfuel_perc_2016,''),fuel_perc_2017=nullif(@vfuel_perc_2017,''),fuel_perc_2018=nullif(@vfuel_perc_2018,''),fuel_perc_2019=nullif(@vfuel_perc_2019,''),
fuel_perc_2020=nullif(@vfuel_perc_2020,'')
;

select * from fossil_fuel_energy_perc;

create table forest_area_perc(
country_name varchar(60) not null unique,
country_code text,
indicator_name text,
indicator_code text,
forest_perc_1960 decimal(15,7),
forest_perc_1961 decimal(15,7),
forest_perc_1962 decimal(15,7),
forest_perc_1963 decimal(15,7),
forest_perc_1964 decimal(15,7),
forest_perc_1965 decimal(15,7),
forest_perc_1966 decimal(15,7),
forest_perc_1967 decimal(15,2),
forest_perc_1968 decimal(15,7),
forest_perc_1969 decimal(15,7),
forest_perc_1970 decimal(15,7),
forest_perc_1971 decimal(15,7),
forest_perc_1972 decimal(15,7),
forest_perc_1973 decimal(15,7),
forest_perc_1974 decimal(15,7),
forest_perc_1975 decimal(15,7),
forest_perc_1976 decimal(15,7),
forest_perc_1977 decimal(15,7),
forest_perc_1978 decimal(15,7),
forest_perc_1979 decimal(15,7),
forest_perc_1980 decimal(15,7),
forest_perc_1981 decimal(15,7),
forest_perc_1982 decimal(15,7),
forest_perc_1983 decimal(15,7),
forest_perc_1984 decimal(15,7),
forest_perc_1985 decimal(15,7),
forest_perc_1986 decimal(15,7),
forest_perc_1987 decimal(15,7),
forest_perc_1988 decimal(15,7),
forest_perc_1989 decimal(15,7),
forest_perc_1990 decimal(15,7),
forest_perc_1991 decimal(15,7),
forest_perc_1992 decimal(15,7),
forest_perc_1993 decimal(15,7),
forest_perc_1994 decimal(15,7),
forest_perc_1995 decimal(15,7),
forest_perc_1996 decimal(15,7),
forest_perc_1997 decimal(15,7),
forest_perc_1998 decimal(15,7),
forest_perc_1999 decimal(15,7),
forest_perc_2000 decimal(15,7),
forest_perc_2001 decimal(15,7),
forest_perc_2002 decimal(15,7),
forest_perc_2003 decimal(15,7),
forest_perc_2004 decimal(15,7),
forest_perc_2005 decimal(15,7),
forest_perc_2006 decimal(15,7),
forest_perc_2007 decimal(15,7),
forest_perc_2008 decimal(15,7),
forest_perc_2009 decimal(15,7),
forest_perc_2010 decimal(15,7),
forest_perc_2011 decimal(15,7),
forest_perc_2012 decimal(15,7),
forest_perc_2013 decimal(15,7),
forest_perc_2014 decimal(15,7),
forest_perc_2015 decimal(15,7),
forest_perc_2016 decimal(15,7),
forest_perc_2017 decimal(15,7),
forest_perc_2018 decimal(15,7),
forest_perc_2019 decimal(15,7),
forest_perc_2020 decimal(15,7)
);

describe forest_area_perc;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Forest_Area_Percent_Land\\API_AG.LND.FRST.ZS_DS2_en_csv_v2_2593121.csv'
into table forest_area_perc
fields terminated by ',' 
enclosed by '"'
lines terminated by '\r\n'
ignore 5 lines
(country_name, country_code, indicator_name, indicator_code,
@vforest_perc_1960, @vforest_perc_1961, @vforest_perc_1962, @vforest_perc_1963, @vforest_perc_1964, @vforest_perc_1965, @vforest_perc_1966, @vforest_perc_1967, @vforest_perc_1968, @vforest_perc_1969, 
@vforest_perc_1970, @vforest_perc_1971, @vforest_perc_1972, @vforest_perc_1973, @vforest_perc_1974, @vforest_perc_1975, @vforest_perc_1976, @vforest_perc_1977, @vforest_perc_1978, @vforest_perc_1979,
@vforest_perc_1980, @vforest_perc_1981, @vforest_perc_1982, @vforest_perc_1983, @vforest_perc_1984, @vforest_perc_1985, @vforest_perc_1986, @vforest_perc_1987, @vforest_perc_1988, @vforest_perc_1989,
@vforest_perc_1990, @vforest_perc_1991, @vforest_perc_1992, @vforest_perc_1993, @vforest_perc_1994, @vforest_perc_1995, @vforest_perc_1996, @vforest_perc_1997, @vforest_perc_1998, @vforest_perc_1999, 
@vforest_perc_2000, @vforest_perc_2001, @vforest_perc_2002, @vforest_perc_2003, @vforest_perc_2004, @vforest_perc_2005, @vforest_perc_2006, @vforest_perc_2007, @vforest_perc_2008, @vforest_perc_2009, 
@vforest_perc_2010, @vforest_perc_2011, @vforest_perc_2012, @vforest_perc_2013, @vforest_perc_2014, @vforest_perc_2015, @vforest_perc_2016, @vforest_perc_2017, @vforest_perc_2018, @vforest_perc_2019, @vforest_perc_2020)
set
forest_perc_1960=nullif(@vforest_perc_1960,''),forest_perc_1961=nullif(@vforest_perc_1961,''),forest_perc_1962=nullif(@vforest_perc_1962,''),forest_perc_1963=nullif(@vforest_perc_1963,''),forest_perc_1964=nullif(@vforest_perc_1964,''),
forest_perc_1965=nullif(@vforest_perc_1965,''),forest_perc_1966=nullif(@vforest_perc_1966,''),forest_perc_1967=nullif(@vforest_perc_1967,''),forest_perc_1968=nullif(@vforest_perc_1968,''),forest_perc_1969=nullif(@vforest_perc_1969,''),
forest_perc_1970=nullif(@vforest_perc_1970,''),forest_perc_1971=nullif(@vforest_perc_1971,''),forest_perc_1972=nullif(@vforest_perc_1972,''),forest_perc_1973=nullif(@vforest_perc_1973,''),forest_perc_1974=nullif(@vforest_perc_1974,''),
forest_perc_1975=nullif(@vforest_perc_1975,''),forest_perc_1976=nullif(@vforest_perc_1976,''),forest_perc_1977=nullif(@vforest_perc_1977,''),forest_perc_1978=nullif(@vforest_perc_1978,''),forest_perc_1979=nullif(@vforest_perc_1979,''),
forest_perc_1980=nullif(@vforest_perc_1980,''),forest_perc_1981=nullif(@vforest_perc_1981,''),forest_perc_1982=nullif(@vforest_perc_1982,''),forest_perc_1983=nullif(@vforest_perc_1983,''),forest_perc_1984=nullif(@vforest_perc_1984,''),
forest_perc_1985=nullif(@vforest_perc_1985,''),forest_perc_1986=nullif(@vforest_perc_1986,''),forest_perc_1987=nullif(@vforest_perc_1987,''),forest_perc_1988=nullif(@vforest_perc_1988,''),forest_perc_1989=nullif(@vforest_perc_1989,''),
forest_perc_1990=nullif(@vforest_perc_1990,''),forest_perc_1991=nullif(@vforest_perc_1991,''),forest_perc_1992=nullif(@vforest_perc_1992,''),forest_perc_1993=nullif(@vforest_perc_1993,''),forest_perc_1994=nullif(@vforest_perc_1994,''),
forest_perc_1995=nullif(@vforest_perc_1995,''),forest_perc_1996=nullif(@vforest_perc_1996,''),forest_perc_1997=nullif(@vforest_perc_1997,''),forest_perc_1998=nullif(@vforest_perc_1998,''),forest_perc_1999=nullif(@vforest_perc_1999,''),
forest_perc_2000=nullif(@vforest_perc_2000,''),forest_perc_2001=nullif(@vforest_perc_2001,''),forest_perc_2002=nullif(@vforest_perc_2002,''),forest_perc_2003=nullif(@vforest_perc_2003,''),forest_perc_2004=nullif(@vforest_perc_2004,''),
forest_perc_2005=nullif(@vforest_perc_2005,''),forest_perc_2006=nullif(@vforest_perc_2006,''),forest_perc_2007=nullif(@vforest_perc_2007,''),forest_perc_2008=nullif(@vforest_perc_2008,''),forest_perc_2009=nullif(@vforest_perc_2009,''),
forest_perc_2010=nullif(@vforest_perc_2010,''),forest_perc_2011=nullif(@vforest_perc_2011,''),forest_perc_2012=nullif(@vforest_perc_2012,''),forest_perc_2013=nullif(@vforest_perc_2013,''),forest_perc_2014=nullif(@vforest_perc_2014,''),
forest_perc_2015=nullif(@vforest_perc_2015,''),forest_perc_2016=nullif(@vforest_perc_2016,''),forest_perc_2017=nullif(@vforest_perc_2017,''),forest_perc_2018=nullif(@vforest_perc_2018,''),forest_perc_2019=nullif(@vforest_perc_2019,''),
forest_perc_2020=nullif(@vforest_perc_2020,'')
;

select * from forest_area_perc;

create table alter_nuclear_energy_perc(
country_name varchar(60) not null unique,
country_code text,
indicator_name text,
indicator_code text,
nuclear_perc_1960 decimal(15,7),
nuclear_perc_1961 decimal(15,7),
nuclear_perc_1962 decimal(15,7),
nuclear_perc_1963 decimal(15,7),
nuclear_perc_1964 decimal(15,7),
nuclear_perc_1965 decimal(15,7),
nuclear_perc_1966 decimal(15,7),
nuclear_perc_1967 decimal(15,2),
nuclear_perc_1968 decimal(15,7),
nuclear_perc_1969 decimal(15,7),
nuclear_perc_1970 decimal(15,7),
nuclear_perc_1971 decimal(15,7),
nuclear_perc_1972 decimal(15,7),
nuclear_perc_1973 decimal(15,7),
nuclear_perc_1974 decimal(15,7),
nuclear_perc_1975 decimal(15,7),
nuclear_perc_1976 decimal(15,7),
nuclear_perc_1977 decimal(15,7),
nuclear_perc_1978 decimal(15,7),
nuclear_perc_1979 decimal(15,7),
nuclear_perc_1980 decimal(15,7),
nuclear_perc_1981 decimal(15,7),
nuclear_perc_1982 decimal(15,7),
nuclear_perc_1983 decimal(15,7),
nuclear_perc_1984 decimal(15,7),
nuclear_perc_1985 decimal(15,7),
nuclear_perc_1986 decimal(15,7),
nuclear_perc_1987 decimal(15,7),
nuclear_perc_1988 decimal(15,7),
nuclear_perc_1989 decimal(15,7),
nuclear_perc_1990 decimal(15,7),
nuclear_perc_1991 decimal(15,7),
nuclear_perc_1992 decimal(15,7),
nuclear_perc_1993 decimal(15,7),
nuclear_perc_1994 decimal(15,7),
nuclear_perc_1995 decimal(15,7),
nuclear_perc_1996 decimal(15,7),
nuclear_perc_1997 decimal(15,7),
nuclear_perc_1998 decimal(15,7),
nuclear_perc_1999 decimal(15,7),
nuclear_perc_2000 decimal(15,7),
nuclear_perc_2001 decimal(15,7),
nuclear_perc_2002 decimal(15,7),
nuclear_perc_2003 decimal(15,7),
nuclear_perc_2004 decimal(15,7),
nuclear_perc_2005 decimal(15,7),
nuclear_perc_2006 decimal(15,7),
nuclear_perc_2007 decimal(15,7),
nuclear_perc_2008 decimal(15,7),
nuclear_perc_2009 decimal(15,7),
nuclear_perc_2010 decimal(15,7),
nuclear_perc_2011 decimal(15,7),
nuclear_perc_2012 decimal(15,7),
nuclear_perc_2013 decimal(15,7),
nuclear_perc_2014 decimal(15,7),
nuclear_perc_2015 decimal(15,7),
nuclear_perc_2016 decimal(15,7),
nuclear_perc_2017 decimal(15,7),
nuclear_perc_2018 decimal(15,7),
nuclear_perc_2019 decimal(15,7),
nuclear_perc_2020 decimal(15,7)
);

describe alter_nuclear_energy_perc;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Alternative_Nuclear_Percent_Energy\\API_EG.USE.COMM.CL.ZS_DS2_en_csv_v2_2601422.csv'
into table alter_nuclear_energy_perc
fields terminated by ',' 
enclosed by '"'
lines terminated by '\r\n'
ignore 5 lines
(country_name, country_code, indicator_name, indicator_code,
@vnuclear_perc_1960, @vnuclear_perc_1961, @vnuclear_perc_1962, @vnuclear_perc_1963, @vnuclear_perc_1964, @vnuclear_perc_1965, @vnuclear_perc_1966, @vnuclear_perc_1967, @vnuclear_perc_1968, @vnuclear_perc_1969, 
@vnuclear_perc_1970, @vnuclear_perc_1971, @vnuclear_perc_1972, @vnuclear_perc_1973, @vnuclear_perc_1974, @vnuclear_perc_1975, @vnuclear_perc_1976, @vnuclear_perc_1977, @vnuclear_perc_1978, @vnuclear_perc_1979,
@vnuclear_perc_1980, @vnuclear_perc_1981, @vnuclear_perc_1982, @vnuclear_perc_1983, @vnuclear_perc_1984, @vnuclear_perc_1985, @vnuclear_perc_1986, @vnuclear_perc_1987, @vnuclear_perc_1988, @vnuclear_perc_1989,
@vnuclear_perc_1990, @vnuclear_perc_1991, @vnuclear_perc_1992, @vnuclear_perc_1993, @vnuclear_perc_1994, @vnuclear_perc_1995, @vnuclear_perc_1996, @vnuclear_perc_1997, @vnuclear_perc_1998, @vnuclear_perc_1999, 
@vnuclear_perc_2000, @vnuclear_perc_2001, @vnuclear_perc_2002, @vnuclear_perc_2003, @vnuclear_perc_2004, @vnuclear_perc_2005, @vnuclear_perc_2006, @vnuclear_perc_2007, @vnuclear_perc_2008, @vnuclear_perc_2009, 
@vnuclear_perc_2010, @vnuclear_perc_2011, @vnuclear_perc_2012, @vnuclear_perc_2013, @vnuclear_perc_2014, @vnuclear_perc_2015, @vnuclear_perc_2016, @vnuclear_perc_2017, @vnuclear_perc_2018, @nuclear_perc_2019, @vnuclear_perc_2020)
set
nuclear_perc_1960=nullif(@vnuclear_perc_1960,''),nuclear_perc_1961=nullif(@vnuclear_perc_1961,''),nuclear_perc_1962=nullif(@vnuclear_perc_1962,''),nuclear_perc_1963=nullif(@vnuclear_perc_1963,''),nuclear_perc_1964=nullif(@vnuclear_perc_1964,''),
nuclear_perc_1965=nullif(@vnuclear_perc_1965,''),nuclear_perc_1966=nullif(@vnuclear_perc_1966,''),nuclear_perc_1967=nullif(@vnuclear_perc_1967,''),nuclear_perc_1968=nullif(@vnuclear_perc_1968,''),nuclear_perc_1969=nullif(@vnuclear_perc_1969,''),
nuclear_perc_1970=nullif(@vnuclear_perc_1970,''),nuclear_perc_1971=nullif(@vnuclear_perc_1971,''),nuclear_perc_1972=nullif(@vnuclear_perc_1972,''),nuclear_perc_1973=nullif(@vnuclear_perc_1973,''),nuclear_perc_1974=nullif(@vnuclear_perc_1974,''),
nuclear_perc_1975=nullif(@vnuclear_perc_1975,''),nuclear_perc_1976=nullif(@vnuclear_perc_1976,''),nuclear_perc_1977=nullif(@vnuclear_perc_1977,''),nuclear_perc_1978=nullif(@vnuclear_perc_1978,''),nuclear_perc_1979=nullif(@vnuclear_perc_1979,''),
nuclear_perc_1980=nullif(@vnuclear_perc_1980,''),nuclear_perc_1981=nullif(@vnuclear_perc_1981,''),nuclear_perc_1982=nullif(@vnuclear_perc_1982,''),nuclear_perc_1983=nullif(@vnuclear_perc_1983,''),nuclear_perc_1984=nullif(@vnuclear_perc_1984,''),
nuclear_perc_1985=nullif(@vnuclear_perc_1985,''),nuclear_perc_1986=nullif(@vnuclear_perc_1986,''),nuclear_perc_1987=nullif(@vnuclear_perc_1987,''),nuclear_perc_1988=nullif(@vnuclear_perc_1988,''),nuclear_perc_1989=nullif(@vnuclear_perc_1989,''),
nuclear_perc_1990=nullif(@vnuclear_perc_1990,''),nuclear_perc_1991=nullif(@vnuclear_perc_1991,''),nuclear_perc_1992=nullif(@vnuclear_perc_1992,''),nuclear_perc_1993=nullif(@vnuclear_perc_1993,''),nuclear_perc_1994=nullif(@vnuclear_perc_1994,''),
nuclear_perc_1995=nullif(@vnuclear_perc_1995,''),nuclear_perc_1996=nullif(@vnuclear_perc_1996,''),nuclear_perc_1997=nullif(@vnuclear_perc_1997,''),nuclear_perc_1998=nullif(@vnuclear_perc_1998,''),nuclear_perc_1999=nullif(@vnuclear_perc_1999,''),
nuclear_perc_2000=nullif(@vnuclear_perc_2000,''),nuclear_perc_2001=nullif(@vnuclear_perc_2001,''),nuclear_perc_2002=nullif(@vnuclear_perc_2002,''),nuclear_perc_2003=nullif(@vnuclear_perc_2003,''),nuclear_perc_2004=nullif(@vnuclear_perc_2004,''),
nuclear_perc_2005=nullif(@vnuclear_perc_2005,''),nuclear_perc_2006=nullif(@vnuclear_perc_2006,''),nuclear_perc_2007=nullif(@vnuclear_perc_2007,''),nuclear_perc_2008=nullif(@vnuclear_perc_2008,''),nuclear_perc_2009=nullif(@vnuclear_perc_2009,''),
nuclear_perc_2010=nullif(@vnuclear_perc_2010,''),nuclear_perc_2011=nullif(@vnuclear_perc_2011,''),nuclear_perc_2012=nullif(@vnuclear_perc_2012,''),nuclear_perc_2013=nullif(@vnuclear_perc_2013,''),nuclear_perc_2014=nullif(@vnuclear_perc_2014,''),
nuclear_perc_2015=nullif(@vnuclear_perc_2015,''),nuclear_perc_2016=nullif(@vnuclear_perc_2016,''),nuclear_perc_2017=nullif(@vnuclear_perc_2017,''),nuclear_perc_2018=nullif(@vnuclear_perc_2018,''),nuclear_perc_2019=nullif(@vnuclear_perc_2019,''),
nuclear_perc_2020=nullif(@vnuclear_perc_2020,'')
;

select * from alter_nuclear_energy_perc;

create table coal_source_electricity_prod_perc(
country_name varchar(60) not null unique,
country_code text,
indicator_name text,
indicator_code text,
coal_perc_1960 decimal(15,7),
coal_perc_1961 decimal(15,7),
coal_perc_1962 decimal(15,7),
coal_perc_1963 decimal(15,7),
coal_perc_1964 decimal(15,7),
coal_perc_1965 decimal(15,7),
coal_perc_1966 decimal(15,7),
coal_perc_1967 decimal(15,2),
coal_perc_1968 decimal(15,7),
coal_perc_1969 decimal(15,7),
coal_perc_1970 decimal(15,7),
coal_perc_1971 decimal(15,7),
coal_perc_1972 decimal(15,7),
coal_perc_1973 decimal(15,7),
coal_perc_1974 decimal(15,7),
coal_perc_1975 decimal(15,7),
coal_perc_1976 decimal(15,7),
coal_perc_1977 decimal(15,7),
coal_perc_1978 decimal(15,7),
coal_perc_1979 decimal(15,7),
coal_perc_1980 decimal(15,7),
coal_perc_1981 decimal(15,7),
coal_perc_1982 decimal(15,7),
coal_perc_1983 decimal(15,7),
coal_perc_1984 decimal(15,7),
coal_perc_1985 decimal(15,7),
coal_perc_1986 decimal(15,7),
coal_perc_1987 decimal(15,7),
coal_perc_1988 decimal(15,7),
coal_perc_1989 decimal(15,7),
coal_perc_1990 decimal(15,7),
coal_perc_1991 decimal(15,7),
coal_perc_1992 decimal(15,7),
coal_perc_1993 decimal(15,7),
coal_perc_1994 decimal(15,7),
coal_perc_1995 decimal(15,7),
coal_perc_1996 decimal(15,7),
coal_perc_1997 decimal(15,7),
coal_perc_1998 decimal(15,7),
coal_perc_1999 decimal(15,7),
coal_perc_2000 decimal(15,7),
coal_perc_2001 decimal(15,7),
coal_perc_2002 decimal(15,7),
coal_perc_2003 decimal(15,7),
coal_perc_2004 decimal(15,7),
coal_perc_2005 decimal(15,7),
coal_perc_2006 decimal(15,7),
coal_perc_2007 decimal(15,7),
coal_perc_2008 decimal(15,7),
coal_perc_2009 decimal(15,7),
coal_perc_2010 decimal(15,7),
coal_perc_2011 decimal(15,7),
coal_perc_2012 decimal(15,7),
coal_perc_2013 decimal(15,7),
coal_perc_2014 decimal(15,7),
coal_perc_2015 decimal(15,7),
coal_perc_2016 decimal(15,7),
coal_perc_2017 decimal(15,7),
coal_perc_2018 decimal(15,7),
coal_perc_2019 decimal(15,7),
coal_perc_2020 decimal(15,7)
);

describe coal_source_electricity_prod_perc;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Electricity_From_Coal_Percent\\API_EG.ELC.COAL.ZS_DS2_en_csv_v2_2608059.csv'
into table coal_source_electricity_prod_perc
fields terminated by ',' 
enclosed by '"'
lines terminated by '\r\n'
ignore 5 lines
(country_name, country_code, indicator_name, indicator_code,
@vcoal_perc_1960, @vcoal_perc_1961, @vcoal_perc_1962, @vcoal_perc_1963, @vcoal_perc_1964, @vcoal_perc_1965, @vcoal_perc_1966, @vcoal_perc_1967, @vcoal_perc_1968, @vcoal_perc_1969, 
@vcoal_perc_1970, @vcoal_perc_1971, @vcoal_perc_1972, @vcoal_perc_1973, @vcoal_perc_1974, @vcoal_perc_1975, @vcoal_perc_1976, @vcoal_perc_1977, @vcoal_perc_1978, @vcoal_perc_1979,
@vcoal_perc_1980, @vcoal_perc_1981, @vcoal_perc_1982, @vcoal_perc_1983, @vcoal_perc_1984, @vcoal_perc_1985, @vcoal_perc_1986, @vcoal_perc_1987, @vcoal_perc_1988, @vcoal_perc_1989,
@vcoal_perc_1990, @vcoal_perc_1991, @vcoal_perc_1992, @vcoal_perc_1993, @vcoal_perc_1994, @vcoal_perc_1995, @vcoal_perc_1996, @vcoal_perc_1997, @vcoal_perc_1998, @vcoal_perc_1999, 
@vcoal_perc_2000, @vcoal_perc_2001, @vcoal_perc_2002, @vcoal_perc_2003, @vcoal_perc_2004, @vcoal_perc_2005, @vcoal_perc_2006, @vcoal_perc_2007, @vcoal_perc_2008, @vcoal_perc_2009, 
@vcoal_perc_2010, @vcoal_perc_2011, @vcoal_perc_2012, @vcoal_perc_2013, @vcoal_perc_2014, @vcoal_perc_2015, @vcoal_perc_2016, @vcoal_perc_2017, @vcoal_perc_2018, @vcoal_perc_2019, @vcoal_perc_2020)
set
coal_perc_1960=nullif(@vcoal_perc_1960,''),coal_perc_1961=nullif(@vcoal_perc_1961,''),coal_perc_1962=nullif(@vcoal_perc_1962,''),coal_perc_1963=nullif(@vcoal_perc_1963,''),coal_perc_1964=nullif(@vcoal_perc_1964,''),
coal_perc_1965=nullif(@vcoal_perc_1965,''),coal_perc_1966=nullif(@vcoal_perc_1966,''),coal_perc_1967=nullif(@vcoal_perc_1967,''),coal_perc_1968=nullif(@vcoal_perc_1968,''),coal_perc_1969=nullif(@vcoal_perc_1969,''),
coal_perc_1970=nullif(@vcoal_perc_1970,''),coal_perc_1971=nullif(@vcoal_perc_1971,''),coal_perc_1972=nullif(@vcoal_perc_1972,''),coal_perc_1973=nullif(@vcoal_perc_1973,''),coal_perc_1974=nullif(@vcoal_perc_1974,''),
coal_perc_1975=nullif(@vcoal_perc_1975,''),coal_perc_1976=nullif(@vcoal_perc_1976,''),coal_perc_1977=nullif(@vcoal_perc_1977,''),coal_perc_1978=nullif(@vcoal_perc_1978,''),coal_perc_1979=nullif(@vcoal_perc_1979,''),
coal_perc_1980=nullif(@vcoal_perc_1980,''),coal_perc_1981=nullif(@vcoal_perc_1981,''),coal_perc_1982=nullif(@vcoal_perc_1982,''),coal_perc_1983=nullif(@vcoal_perc_1983,''),coal_perc_1984=nullif(@vcoal_perc_1984,''),
coal_perc_1985=nullif(@vcoal_perc_1985,''),coal_perc_1986=nullif(@vcoal_perc_1986,''),coal_perc_1987=nullif(@vcoal_perc_1987,''),coal_perc_1988=nullif(@vcoal_perc_1988,''),coal_perc_1989=nullif(@vcoal_perc_1989,''),
coal_perc_1990=nullif(@vcoal_perc_1990,''),coal_perc_1991=nullif(@vcoal_perc_1991,''),coal_perc_1992=nullif(@vcoal_perc_1992,''),coal_perc_1993=nullif(@vcoal_perc_1993,''),coal_perc_1994=nullif(@vcoal_perc_1994,''),
coal_perc_1995=nullif(@vcoal_perc_1995,''),coal_perc_1996=nullif(@vcoal_perc_1996,''),coal_perc_1997=nullif(@vcoal_perc_1997,''),coal_perc_1998=nullif(@vcoal_perc_1998,''),coal_perc_1999=nullif(@vcoal_perc_1999,''),
coal_perc_2000=nullif(@vcoal_perc_2000,''),coal_perc_2001=nullif(@vcoal_perc_2001,''),coal_perc_2002=nullif(@vcoal_perc_2002,''),coal_perc_2003=nullif(@vcoal_perc_2003,''),coal_perc_2004=nullif(@vcoal_perc_2004,''),
coal_perc_2005=nullif(@vcoal_perc_2005,''),coal_perc_2006=nullif(@vcoal_perc_2006,''),coal_perc_2007=nullif(@vcoal_perc_2007,''),coal_perc_2008=nullif(@vcoal_perc_2008,''),coal_perc_2009=nullif(@vcoal_perc_2009,''),
coal_perc_2010=nullif(@vcoal_perc_2010,''),coal_perc_2011=nullif(@vcoal_perc_2011,''),coal_perc_2012=nullif(@vcoal_perc_2012,''),coal_perc_2013=nullif(@vcoal_perc_2013,''),coal_perc_2014=nullif(@vcoal_perc_2014,''),
coal_perc_2015=nullif(@vcoal_perc_2015,''),coal_perc_2016=nullif(@vcoal_perc_2016,''),coal_perc_2017=nullif(@vcoal_perc_2017,''),coal_perc_2018=nullif(@vcoal_perc_2018,''),coal_perc_2019=nullif(@vcoal_perc_2019,''),
coal_perc_2020=nullif(@vcoal_perc_2020,'')
;

select * from coal_source_electricity_prod_perc;

create table renewable_consumption_perc(
country_name varchar(60) not null unique,
country_code text,
indicator_name text,
indicator_code text,
renew_perc_1960 decimal(15,7),
renew_perc_1961 decimal(15,7),
renew_perc_1962 decimal(15,7),
renew_perc_1963 decimal(15,7),
renew_perc_1964 decimal(15,7),
renew_perc_1965 decimal(15,7),
renew_perc_1966 decimal(15,7),
renew_perc_1967 decimal(15,2),
renew_perc_1968 decimal(15,7),
renew_perc_1969 decimal(15,7),
renew_perc_1970 decimal(15,7),
renew_perc_1971 decimal(15,7),
renew_perc_1972 decimal(15,7),
renew_perc_1973 decimal(15,7),
renew_perc_1974 decimal(15,7),
renew_perc_1975 decimal(15,7),
renew_perc_1976 decimal(15,7),
renew_perc_1977 decimal(15,7),
renew_perc_1978 decimal(15,7),
renew_perc_1979 decimal(15,7),
renew_perc_1980 decimal(15,7),
renew_perc_1981 decimal(15,7),
renew_perc_1982 decimal(15,7),
renew_perc_1983 decimal(15,7),
renew_perc_1984 decimal(15,7),
renew_perc_1985 decimal(15,7),
renew_perc_1986 decimal(15,7),
renew_perc_1987 decimal(15,7),
renew_perc_1988 decimal(15,7),
renew_perc_1989 decimal(15,7),
renew_perc_1990 decimal(15,7),
renew_perc_1991 decimal(15,7),
renew_perc_1992 decimal(15,7),
renew_perc_1993 decimal(15,7),
renew_perc_1994 decimal(15,7),
renew_perc_1995 decimal(15,7),
renew_perc_1996 decimal(15,7),
renew_perc_1997 decimal(15,7),
renew_perc_1998 decimal(15,7),
renew_perc_1999 decimal(15,7),
renew_perc_2000 decimal(15,7),
renew_perc_2001 decimal(15,7),
renew_perc_2002 decimal(15,7),
renew_perc_2003 decimal(15,7),
renew_perc_2004 decimal(15,7),
renew_perc_2005 decimal(15,7),
renew_perc_2006 decimal(15,7),
renew_perc_2007 decimal(15,7),
renew_perc_2008 decimal(15,7),
renew_perc_2009 decimal(15,7),
renew_perc_2010 decimal(15,7),
renew_perc_2011 decimal(15,7),
renew_perc_2012 decimal(15,7),
renew_perc_2013 decimal(15,7),
renew_perc_2014 decimal(15,7),
renew_perc_2015 decimal(15,7),
renew_perc_2016 decimal(15,7),
renew_perc_2017 decimal(15,7),
renew_perc_2018 decimal(15,7),
renew_perc_2019 decimal(15,7),
renew_perc_2020 decimal(15,7)
);

describe renewable_consumption_perc;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Renewable_Cons_Percent_Total\\API_EG.FEC.RNEW.ZS_DS2_en_csv_v2_2598866.csv'
into table renewable_consumption_perc
fields terminated by ',' 
enclosed by '"'
lines terminated by '\r\n'
ignore 5 lines
(country_name, country_code, indicator_name, indicator_code,
@vrenew_perc_1960, @vrenew_perc_1961, @vrenew_perc_1962, @vrenew_perc_1963, @vrenew_perc_1964, @vrenew_perc_1965, @vrenew_perc_1966, @vrenew_perc_1967, @vrenew_perc_1968, @vrenew_perc_1969, 
@vrenew_perc_1970, @vrenew_perc_1971, @vrenew_perc_1972, @vrenew_perc_1973, @vrenew_perc_1974, @vrenew_perc_1975, @vrenew_perc_1976, @vrenew_perc_1977, @vrenew_perc_1978, @vrenew_perc_1979,
@vrenew_perc_1980, @vrenew_perc_1981, @vrenew_perc_1982, @vrenew_perc_1983, @vrenew_perc_1984, @vrenew_perc_1985, @vrenew_perc_1986, @vrenew_perc_1987, @vrenew_perc_1988, @vrenew_perc_1989,
@vrenew_perc_1990, @vrenew_perc_1991, @vrenew_perc_1992, @vrenew_perc_1993, @vrenew_perc_1994, @vrenew_perc_1995, @vrenew_perc_1996, @vrenew_perc_1997, @vrenew_perc_1998, @vrenew_perc_1999, 
@vrenew_perc_2000, @vrenew_perc_2001, @vrenew_perc_2002, @vrenew_perc_2003, @vrenew_perc_2004, @vrenew_perc_2005, @vrenew_perc_2006, @vrenew_perc_2007, @vrenew_perc_2008, @vrenew_perc_2009, 
@vrenew_perc_2010, @vrenew_perc_2011, @vrenew_perc_2012, @vrenew_perc_2013, @vrenew_perc_2014, @vrenew_perc_2015, @vrenew_perc_2016, @vrenew_perc_2017, @vrenew_perc_2018, @vrenew_perc_2019, @vrenew_perc_2020)
set
renew_perc_1960=nullif(@vrenew_perc_1960,''),renew_perc_1961=nullif(@vrenew_perc_1961,''),renew_perc_1962=nullif(@vrenew_perc_1962,''),renew_perc_1963=nullif(@vrenew_perc_1963,''),renew_perc_1964=nullif(@vrenew_perc_1964,''),
renew_perc_1965=nullif(@vrenew_perc_1965,''),renew_perc_1966=nullif(@vrenew_perc_1966,''),renew_perc_1967=nullif(@vrenew_perc_1967,''),renew_perc_1968=nullif(@vrenew_perc_1968,''),renew_perc_1969=nullif(@vrenew_perc_1969,''),
renew_perc_1970=nullif(@vrenew_perc_1970,''),renew_perc_1971=nullif(@vrenew_perc_1971,''),renew_perc_1972=nullif(@vrenew_perc_1972,''),renew_perc_1973=nullif(@vrenew_perc_1973,''),renew_perc_1974=nullif(@vrenew_perc_1974,''),
renew_perc_1975=nullif(@vrenew_perc_1975,''),renew_perc_1976=nullif(@vrenew_perc_1976,''),renew_perc_1977=nullif(@vrenew_perc_1977,''),renew_perc_1978=nullif(@vrenew_perc_1978,''),renew_perc_1979=nullif(@vrenew_perc_1979,''),
renew_perc_1980=nullif(@vrenew_perc_1980,''),renew_perc_1981=nullif(@vrenew_perc_1981,''),renew_perc_1982=nullif(@vrenew_perc_1982,''),renew_perc_1983=nullif(@vrenew_perc_1983,''),renew_perc_1984=nullif(@vrenew_perc_1984,''),
renew_perc_1985=nullif(@vrenew_perc_1985,''),renew_perc_1986=nullif(@vrenew_perc_1986,''),renew_perc_1987=nullif(@vrenew_perc_1987,''),renew_perc_1988=nullif(@vrenew_perc_1988,''),renew_perc_1989=nullif(@vrenew_perc_1989,''),
renew_perc_1990=nullif(@vrenew_perc_1990,''),renew_perc_1991=nullif(@vrenew_perc_1991,''),renew_perc_1992=nullif(@vrenew_perc_1992,''),renew_perc_1993=nullif(@vrenew_perc_1993,''),renew_perc_1994=nullif(@vrenew_perc_1994,''),
renew_perc_1995=nullif(@vrenew_perc_1995,''),renew_perc_1996=nullif(@vrenew_perc_1996,''),renew_perc_1997=nullif(@vrenew_perc_1997,''),renew_perc_1998=nullif(@vrenew_perc_1998,''),renew_perc_1999=nullif(@vrenew_perc_1999,''),
renew_perc_2000=nullif(@vrenew_perc_2000,''),renew_perc_2001=nullif(@vrenew_perc_2001,''),renew_perc_2002=nullif(@vrenew_perc_2002,''),renew_perc_2003=nullif(@vrenew_perc_2003,''),renew_perc_2004=nullif(@vrenew_perc_2004,''),
renew_perc_2005=nullif(@vrenew_perc_2005,''),renew_perc_2006=nullif(@vrenew_perc_2006,''),renew_perc_2007=nullif(@vrenew_perc_2007,''),renew_perc_2008=nullif(@vrenew_perc_2008,''),renew_perc_2009=nullif(@vrenew_perc_2009,''),
renew_perc_2010=nullif(@vrenew_perc_2010,''),renew_perc_2011=nullif(@vrenew_perc_2011,''),renew_perc_2012=nullif(@vrenew_perc_2012,''),renew_perc_2013=nullif(@vrenew_perc_2013,''),renew_perc_2014=nullif(@vrenew_perc_2014,''),
renew_perc_2015=nullif(@vrenew_perc_2015,''),renew_perc_2016=nullif(@vrenew_perc_2016,''),renew_perc_2017=nullif(@vrenew_perc_2017,''),renew_perc_2018=nullif(@vrenew_perc_2018,''),renew_perc_2019=nullif(@vrenew_perc_2019,''),
renew_perc_2020=nullif(@vrenew_perc_2020,'')
;

select * from renewable_consumption_perc;

create table gdp_per_capita_list
select country_name, country_code, indicator_name, '1960' as year, gdp_p_1960 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1961' as year, gdp_p_1961 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1962' as year, gdp_p_1962 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1963' as year, gdp_p_1963 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1964' as year, gdp_p_1964 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1965' as year, gdp_p_1965 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1966' as year, gdp_p_1966 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1967' as year, gdp_p_1967 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1968' as year, gdp_p_1968 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1969' as year, gdp_p_1969 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1970' as year, gdp_p_1970 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1971' as year, gdp_p_1971 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1972' as year, gdp_p_1972 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1973' as year, gdp_p_1973 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1974' as year, gdp_p_1974 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1975' as year, gdp_p_1975 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1976' as year, gdp_p_1976 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1977' as year, gdp_p_1977 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1978' as year, gdp_p_1978 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1979' as year, gdp_p_1979 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1980' as year, gdp_p_1980 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1981' as year, gdp_p_1981 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1982' as year, gdp_p_1982 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1983' as year, gdp_p_1983 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1984' as year, gdp_p_1984 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1985' as year, gdp_p_1985 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1986' as year, gdp_p_1986 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1987' as year, gdp_p_1987 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1988' as year, gdp_p_1988 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1989' as year, gdp_p_1989 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1990' as year, gdp_p_1990 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1991' as year, gdp_p_1991 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1992' as year, gdp_p_1992 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1993' as year, gdp_p_1993 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1994' as year, gdp_p_1994 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1995' as year, gdp_p_1995 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1996' as year, gdp_p_1996 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1997' as year, gdp_p_1997 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1998' as year, gdp_p_1998 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '1999' as year, gdp_p_1999 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2000' as year, gdp_p_2000 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2001' as year, gdp_p_2001 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2002' as year, gdp_p_2002 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2003' as year, gdp_p_2003 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2004' as year, gdp_p_2004 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2005' as year, gdp_p_2005 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2006' as year, gdp_p_2006 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2007' as year, gdp_p_2007 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2008' as year, gdp_p_2008 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2009' as year, gdp_p_2009 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2010' as year, gdp_p_2010 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2011' as year, gdp_p_2011 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2012' as year, gdp_p_2012 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2013' as year, gdp_p_2013 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2014' as year, gdp_p_2014 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2015' as year, gdp_p_2015 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2016' as year, gdp_p_2016 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2017' as year, gdp_p_2017 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2018' as year, gdp_p_2018 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2019' as year, gdp_p_2019 as gdp_per_capita from gdp_per_capita
union all
select country_name, country_code, indicator_name, '2020' as year, gdp_p_2020 as gdp_per_capita from gdp_per_capita;


create table co2_per_capita_list
select country_name, country_code, indicator_name, '1960' as year, co2_p_1960 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1961' as year, co2_p_1961 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1962' as year, co2_p_1962 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1963' as year, co2_p_1963 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1964' as year, co2_p_1964 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1965' as year, co2_p_1965 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1966' as year, co2_p_1966 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1967' as year, co2_p_1967 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1968' as year, co2_p_1968 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1969' as year, co2_p_1969 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1970' as year, co2_p_1970 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1971' as year, co2_p_1971 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1972' as year, co2_p_1972 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1973' as year, co2_p_1973 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1974' as year, co2_p_1974 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1975' as year, co2_p_1975 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1976' as year, co2_p_1976 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1977' as year, co2_p_1977 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1978' as year, co2_p_1978 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1979' as year, co2_p_1979 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1980' as year, co2_p_1980 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1981' as year, co2_p_1981 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1982' as year, co2_p_1982 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1983' as year, co2_p_1983 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1984' as year, co2_p_1984 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1985' as year, co2_p_1985 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1986' as year, co2_p_1986 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1987' as year, co2_p_1987 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1988' as year, co2_p_1988 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1989' as year, co2_p_1989 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1990' as year, co2_p_1990 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1991' as year, co2_p_1991 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1992' as year, co2_p_1992 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1993' as year, co2_p_1993 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1994' as year, co2_p_1994 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1995' as year, co2_p_1995 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1996' as year, co2_p_1996 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1997' as year, co2_p_1997 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1998' as year, co2_p_1998 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '1999' as year, co2_p_1999 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2000' as year, co2_p_2000 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2001' as year, co2_p_2001 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2002' as year, co2_p_2002 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2003' as year, co2_p_2003 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2004' as year, co2_p_2004 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2005' as year, co2_p_2005 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2006' as year, co2_p_2006 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2007' as year, co2_p_2007 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2008' as year, co2_p_2008 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2009' as year, co2_p_2009 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2010' as year, co2_p_2010 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2011' as year, co2_p_2011 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2012' as year, co2_p_2012 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2013' as year, co2_p_2013 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2014' as year, co2_p_2014 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2015' as year, co2_p_2015 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2016' as year, co2_p_2016 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2017' as year, co2_p_2017 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2018' as year, co2_p_2018 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2019' as year, co2_p_2019 as co2_per_capita from co2_per_capita
union all
select country_name, country_code, indicator_name, '2020' as year, co2_p_2020 as co2_per_capita from co2_per_capita
;

create table fossil_fuel_energy_perc_list
select country_name, country_code, indicator_name, '1960' as year, fuel_perc_1960 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1961' as year, fuel_perc_1961 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1962' as year, fuel_perc_1962 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1963' as year, fuel_perc_1963 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1964' as year, fuel_perc_1964 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1965' as year, fuel_perc_1965 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1966' as year, fuel_perc_1966 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1967' as year, fuel_perc_1967 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1968' as year, fuel_perc_1968 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1969' as year, fuel_perc_1969 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1970' as year, fuel_perc_1970 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1971' as year, fuel_perc_1971 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1972' as year, fuel_perc_1972 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1973' as year, fuel_perc_1973 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1974' as year, fuel_perc_1974 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1975' as year, fuel_perc_1975 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1976' as year, fuel_perc_1976 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1977' as year, fuel_perc_1977 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1978' as year, fuel_perc_1978 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1979' as year, fuel_perc_1979 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1980' as year, fuel_perc_1980 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1981' as year, fuel_perc_1981 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1982' as year, fuel_perc_1982 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1983' as year, fuel_perc_1983 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1984' as year, fuel_perc_1984 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1985' as year, fuel_perc_1985 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1986' as year, fuel_perc_1986 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1987' as year, fuel_perc_1987 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1988' as year, fuel_perc_1988 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1989' as year, fuel_perc_1989 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1990' as year, fuel_perc_1990 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1991' as year, fuel_perc_1991 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1992' as year, fuel_perc_1992 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1993' as year, fuel_perc_1993 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1994' as year, fuel_perc_1994 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1995' as year, fuel_perc_1995 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1996' as year, fuel_perc_1996 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1997' as year, fuel_perc_1997 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1998' as year, fuel_perc_1998 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '1999' as year, fuel_perc_1999 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2000' as year, fuel_perc_2000 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2001' as year, fuel_perc_2001 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2002' as year, fuel_perc_2002 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2003' as year, fuel_perc_2003 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2004' as year, fuel_perc_2004 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2005' as year, fuel_perc_2005 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2006' as year, fuel_perc_2006 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2007' as year, fuel_perc_2007 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2008' as year, fuel_perc_2008 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2009' as year, fuel_perc_2009 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2010' as year, fuel_perc_2010 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2011' as year, fuel_perc_2011 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2012' as year, fuel_perc_2012 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2013' as year, fuel_perc_2013 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2014' as year, fuel_perc_2014 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2015' as year, fuel_perc_2015 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2016' as year, fuel_perc_2016 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2017' as year, fuel_perc_2017 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2018' as year, fuel_perc_2018 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2019' as year, fuel_perc_2019 as fossil_fuel_energy_perc from fossil_fuel_energy_perc
union all
select country_name, country_code, indicator_name, '2020' as year, fuel_perc_2020 as fossil_fuel_energy_perc from fossil_fuel_energy_perc;


create table forest_area_perc_list
select country_name, country_code, indicator_name, '1960' as year, forest_perc_1960 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1961' as year, forest_perc_1961 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1962' as year, forest_perc_1962 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1963' as year, forest_perc_1963 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1964' as year, forest_perc_1964 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1965' as year, forest_perc_1965 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1966' as year, forest_perc_1966 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1967' as year, forest_perc_1967 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1968' as year, forest_perc_1968 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1969' as year, forest_perc_1969 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1970' as year, forest_perc_1970 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1971' as year, forest_perc_1971 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1972' as year, forest_perc_1972 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1973' as year, forest_perc_1973 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1974' as year, forest_perc_1974 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1975' as year, forest_perc_1975 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1976' as year, forest_perc_1976 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1977' as year, forest_perc_1977 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1978' as year, forest_perc_1978 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1979' as year, forest_perc_1979 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1980' as year, forest_perc_1980 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1981' as year, forest_perc_1981 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1982' as year, forest_perc_1982 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1983' as year, forest_perc_1983 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1984' as year, forest_perc_1984 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1985' as year, forest_perc_1985 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1986' as year, forest_perc_1986 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1987' as year, forest_perc_1987 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1988' as year, forest_perc_1988 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1989' as year, forest_perc_1989 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1990' as year, forest_perc_1990 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1991' as year, forest_perc_1991 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1992' as year, forest_perc_1992 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1993' as year, forest_perc_1993 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1994' as year, forest_perc_1994 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1995' as year, forest_perc_1995 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1996' as year, forest_perc_1996 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1997' as year, forest_perc_1997 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1998' as year, forest_perc_1998 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '1999' as year, forest_perc_1999 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2000' as year, forest_perc_2000 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2001' as year, forest_perc_2001 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2002' as year, forest_perc_2002 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2003' as year, forest_perc_2003 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2004' as year, forest_perc_2004 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2005' as year, forest_perc_2005 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2006' as year, forest_perc_2006 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2007' as year, forest_perc_2007 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2008' as year, forest_perc_2008 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2009' as year, forest_perc_2009 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2010' as year, forest_perc_2010 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2011' as year, forest_perc_2011 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2012' as year, forest_perc_2012 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2013' as year, forest_perc_2013 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2014' as year, forest_perc_2014 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2015' as year, forest_perc_2015 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2016' as year, forest_perc_2016 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2017' as year, forest_perc_2017 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2018' as year, forest_perc_2018 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2019' as year, forest_perc_2019 as forest_area_perc from forest_area_perc
union all
select country_name, country_code, indicator_name, '2020' as year, forest_perc_2020 as forest_area_perc from forest_area_perc
;



create table alter_nuclear_energy_perc_list
select country_name, country_code, indicator_name, '1960' as year, nuclear_perc_1960 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1961' as year, nuclear_perc_1961 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1962' as year, nuclear_perc_1962 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1963' as year, nuclear_perc_1963 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1964' as year, nuclear_perc_1964 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1965' as year, nuclear_perc_1965 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1966' as year, nuclear_perc_1966 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1967' as year, nuclear_perc_1967 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1968' as year, nuclear_perc_1968 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1969' as year, nuclear_perc_1969 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1970' as year, nuclear_perc_1970 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1971' as year, nuclear_perc_1971 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1972' as year, nuclear_perc_1972 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1973' as year, nuclear_perc_1973 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1974' as year, nuclear_perc_1974 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1975' as year, nuclear_perc_1975 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1976' as year, nuclear_perc_1976 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1977' as year, nuclear_perc_1977 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1978' as year, nuclear_perc_1978 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1979' as year, nuclear_perc_1979 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1980' as year, nuclear_perc_1980 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1981' as year, nuclear_perc_1981 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1982' as year, nuclear_perc_1982 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1983' as year, nuclear_perc_1983 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1984' as year, nuclear_perc_1984 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1985' as year, nuclear_perc_1985 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1986' as year, nuclear_perc_1986 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1987' as year, nuclear_perc_1987 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1988' as year, nuclear_perc_1988 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1989' as year, nuclear_perc_1989 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1990' as year, nuclear_perc_1990 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1991' as year, nuclear_perc_1991 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1992' as year, nuclear_perc_1992 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1993' as year, nuclear_perc_1993 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1994' as year, nuclear_perc_1994 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1995' as year, nuclear_perc_1995 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1996' as year, nuclear_perc_1996 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1997' as year, nuclear_perc_1997 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1998' as year, nuclear_perc_1998 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '1999' as year, nuclear_perc_1999 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2000' as year, nuclear_perc_2000 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2001' as year, nuclear_perc_2001 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2002' as year, nuclear_perc_2002 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2003' as year, nuclear_perc_2003 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2004' as year, nuclear_perc_2004 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2005' as year, nuclear_perc_2005 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2006' as year, nuclear_perc_2006 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2007' as year, nuclear_perc_2007 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2008' as year, nuclear_perc_2008 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2009' as year, nuclear_perc_2009 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2010' as year, nuclear_perc_2010 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2011' as year, nuclear_perc_2011 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2012' as year, nuclear_perc_2012 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2013' as year, nuclear_perc_2013 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2014' as year, nuclear_perc_2014 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2015' as year, nuclear_perc_2015 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2016' as year, nuclear_perc_2016 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2017' as year, nuclear_perc_2017 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2018' as year, nuclear_perc_2018 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2019' as year, nuclear_perc_2019 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
union all
select country_name, country_code, indicator_name, '2020' as year, nuclear_perc_2020 as alter_nuclear_energy_perc from alter_nuclear_energy_perc
;


create table renewable_consumption_perc_list
select country_name, country_code, indicator_name, '1960' as year, renew_perc_1960 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1961' as year, renew_perc_1961 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1962' as year, renew_perc_1962 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1963' as year, renew_perc_1963 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1964' as year, renew_perc_1964 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1965' as year, renew_perc_1965 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1966' as year, renew_perc_1966 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1967' as year, renew_perc_1967 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1968' as year, renew_perc_1968 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1969' as year, renew_perc_1969 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1970' as year, renew_perc_1970 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1971' as year, renew_perc_1971 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1972' as year, renew_perc_1972 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1973' as year, renew_perc_1973 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1974' as year, renew_perc_1974 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1975' as year, renew_perc_1975 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1976' as year, renew_perc_1976 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1977' as year, renew_perc_1977 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1978' as year, renew_perc_1978 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1979' as year, renew_perc_1979 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1980' as year, renew_perc_1980 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1981' as year, renew_perc_1981 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1982' as year, renew_perc_1982 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1983' as year, renew_perc_1983 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1984' as year, renew_perc_1984 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1985' as year, renew_perc_1985 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1986' as year, renew_perc_1986 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1987' as year, renew_perc_1987 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1988' as year, renew_perc_1988 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1989' as year, renew_perc_1989 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1990' as year, renew_perc_1990 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1991' as year, renew_perc_1991 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1992' as year, renew_perc_1992 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1993' as year, renew_perc_1993 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1994' as year, renew_perc_1994 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1995' as year, renew_perc_1995 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1996' as year, renew_perc_1996 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1997' as year, renew_perc_1997 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1998' as year, renew_perc_1998 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '1999' as year, renew_perc_1999 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2000' as year, renew_perc_2000 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2001' as year, renew_perc_2001 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2002' as year, renew_perc_2002 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2003' as year, renew_perc_2003 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2004' as year, renew_perc_2004 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2005' as year, renew_perc_2005 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2006' as year, renew_perc_2006 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2007' as year, renew_perc_2007 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2008' as year, renew_perc_2008 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2009' as year, renew_perc_2009 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2010' as year, renew_perc_2010 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2011' as year, renew_perc_2011 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2012' as year, renew_perc_2012 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2013' as year, renew_perc_2013 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2014' as year, renew_perc_2014 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2015' as year, renew_perc_2015 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2016' as year, renew_perc_2016 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2017' as year, renew_perc_2017 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2018' as year, renew_perc_2018 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2019' as year, renew_perc_2019 as renewable_consumption_perc from renewable_consumption_perc
union all
select country_name, country_code, indicator_name, '2020' as year, renew_perc_2020 as renewable_consumption_perc from renewable_consumption_perc
;



select gdp_per_capita_list.country_name,
		gdp_per_capita_list.country_code, 
        gdp_per_capita_list.year, 
        gdp_per_capita,
        co2_per_capita,
        fossil_fuel_energy_perc,
        forest_area_perc,
        alter_nuclear_energy_perc,
        renewable_consumption_perc,
        coal_source_perc,
        latitude,
        longitude
from gdp_per_capita_list
left join co2_per_capita_list
on gdp_per_capita_list.country_name = co2_per_capita_list.country_name
and gdp_per_capita_list.year = co2_per_capita_list.year
left join fossil_fuel_energy_perc_list
on gdp_per_capita_list.country_name = fossil_fuel_energy_perc_list.country_name
and gdp_per_capita_list.year = fossil_fuel_energy_perc_list.year
left join forest_area_perc_list
on gdp_per_capita_list.country_name = forest_area_perc_list.country_name
and gdp_per_capita_list.year = forest_area_perc_list.year
left join alter_nuclear_energy_perc_list
on gdp_per_capita_list.country_name = alter_nuclear_energy_perc_list.country_name
and gdp_per_capita_list.year = alter_nuclear_energy_perc_list.year
left join renewable_consumption_perc_list
on gdp_per_capita_list.country_name = renewable_consumption_perc_list.country_name
and gdp_per_capita_list.year = renewable_consumption_perc_list.year
left join coal_source_electricity_prod_perc_list
on gdp_per_capita_list.country_name = coal_source_electricity_prod_perc_list.country_name
and gdp_per_capita_list.year = coal_source_electricity_prod_perc_list.year
left join long_lat
on gdp_per_capita_list.country_name = long_lat.country
limit 16500;

select * from renewable_consumption_perc_list limit 16500;


create table long_lat(
country_code text not null,
latitude decimal(10,6) not null,
longitude decimal(10,6) not null,
country text not null
);

drop table long_lat;
describe long_lat;
truncate table long_lat;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\long_lat.csv'
into table long_lat
character set utf8mb4
fields terminated by ',' 
optionally enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

select * from long_lat;

show tables;

select * from long_lat;

select alt.country_name,
alt.year,
alt.alter_nuclear_energy_perc,
coal.coal_soure_perc,
forest.forest_area_perc,
fossil.fossil_fuel_energy_perc,
renew.renewable_consumption_perc,
gdp.gdp_per_capita,
co2.co2_per_capita,
longitude,
latitude
from alter_nuclear_energy_perc_list as alt
left join coal_source_perc_list as coal
on alt.country_name = coal.country_name and alt.year = coal.year
left join forest_area_perc_list as forest
on alt.country_name = forest.country_name and alt.year = forest.year
left join fossil_fuel_energy_perc_list as fossil
on alt.country_name = fossil.country_name and alt.year = fossil.year
left join renewable_consumption_perc_list as renew
on alt.country_name = renew.country_name and alt.year = renew.year
left join gdp_per_capita_list as gdp
on alt.country_name = gdp.country_name and alt.year = gdp.year
left join co2_per_capita_list as co2
on alt.country_name = co2.country_name and alt.year = co2.year
left join long_lat
on alt.country_name = long_lat.country;



select alt.country_name, alt.country_code, alt.year, alt.alter_nuclear_energy_perc, co2_per_capita, gdp.gdp_per_capita, longitude, latitude,
renew.renewable_consumption_perc, fossil.fossil_fuel_energy_perc, forest.forest_area_perc, coal_source_perc
from alter_nuclear_energy_perc_list as alt
left join co2_per_capita_list as co2
on alt.country_name = co2.country_name and alt.year = co2.year
left join long_lat
on alt.country_name = long_lat.country
left join gdp_per_capita_list as gdp
on alt.country_name = gdp.country_name and alt.year = gdp.year
left join renewable_consumption_perc_list as renew
on alt.country_name = renew.country_name and alt.year = renew.year
left join fossil_fuel_energy_perc_list as fossil
on alt.country_name = fossil.country_name and alt.year = fossil.year
left join forest_area_perc_list as forest
on alt.country_name = forest.country_name and alt.year = forest.year
left join coal_source_electricity_prod_perc_list as coal
on alt.country_name = coal.country_name and alt.year = coal.year