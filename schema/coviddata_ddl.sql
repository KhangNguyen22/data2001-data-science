-- Schema
--CREATE TABLE statistical_areas (area_id, area_name, parent_area_id)
--CREATE TABLE neighbourhoods (area_id,area_name,land_area,population,number_of_dwellings,number_of_businesses,median_annual_household_income,avg_monthly_rent)
--CREATE TABLE census_stats (area_id, median_annual_household_income, avg_monthly_rent)
--CREATE TABLE population_stats_2016 (area_id,area_name,0-4,5-9,10-14,15-19,20-24,25-29,30-34,35-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-84,85_and_over,total_persons,females,males)
--CREATE TABLE heath_services (id,name,category,num_beds,address,suburb,state,postcode,longitude,latitude,comment,website)
--CREATE TABLE nsw_postcodes (id,postcode,locality,longitude,latitude)
--CREATE TABLE nsw_testsites (site_id,Centre name,Phone number,Opening hours,longitude,latitude,test_capacity)

-- pgplSQL simple --
CREATE SCHEMA Covid;

SET search_path to Covid;

CREATE TABLE statistical_areas (
	area_id	     INTEGER PRIMARY KEY,
	area_name VARCHAR(50) ,
	parent_area_id INTEGER
);

CREATE TABLE neighbourhoods (
	area_id INTEGER NOT NULL,
	area_name VARCHAR(50),
	land_area NUMERIC,
	population INTEGER,
	number_of_dwellings INTEGER,
	number_of_businesses INTEGER,
	median_annual_household_income INTEGER,
	avg_monthly_rent INTEGER,
	PRIMARY KEY (area_id),
	FOREIGN KEY(area_id) REFERENCES statistical_areas(area_id)

);



CREATE TABLE census_stats (
	area_id INTEGER PRIMARY KEY,
	median_annual_household_income INTEGER,
	avg_monthly_rent INTEGER);

CREATE TABLE population_stats_2016 (
	area_id INTEGER PRIMARY KEY,
	area_name VARCHAR(50),
	age_0_to_4 INTEGER,
	age_5_to_9 INTEGER,
	age_10_to_14 INTEGER,
	age_15_to_19 INTEGER,
	age_20_to_24 INTEGER,
	age_25_to_29 INTEGER,
	age_30_to_34 INTEGER,
	age_35_to_39 INTEGER,
	age_40_to_44 INTEGER,
	age_45_to_49 INTEGER,
	age_50_to_54 INTEGER,
	age_55_to_59 INTEGER,
	age_60_to_64 INTEGER,
	age_65_to_69 INTEGER,
	age_70_to_74 INTEGER,
	age_75_to_79 INTEGER,
	age_80_to_84 INTEGER,
	age_85_and_over INTEGER,
	total_persons INTEGER,
	females INTEGER,
	males INTEGER
);

CREATE TABLE health_services (
	id INTEGER PRIMARY KEY,
	name VARCHAR(100),
	category VARCHAR(100),
	num_beds INTEGER,
	address VARCHAR(100),
	suburb VARCHAR(50),
	state VARCHAR(4),
	postcode CHAR(4),
	longitude NUMERIC,
	latitude NUMERIC,
	comment VARCHAR(2300),
	website VARCHAR(150));

CREATE TABLE nsw_postcodes (
	id INTEGER PRIMARY KEY,
	postcode INTEGER,
	locality VARCHAR(50),
	longitude NUMERIC,
	latitude NUMERIC);

CREATE TABLE nsw_testsites (
	site_id INTEGER PRIMARY KEY,
	Centre_name VARCHAR(70) ,
	Phone_number VARCHAR(70),
	Opening_hours VARCHAR(80),
	longitude NUMERIC,
	latitude NUMERIC,
	test_capacity INTEGER);

CREATE TABLE covid_tests  (
	test_id INTEGER PRIMARY KEY,
	test_date DATE,
	postcode CHAR(4),
	lhd_2010_code CHAR(4),
	lhd_2010_name VARCHAR(50),
	lga_code19 INTEGER,
	lga_name19 VARCHAR(50),
	result VARCHAR(50)
);

-- Could not execute the code below
--CREATE TABLE sa2_data (
 --               id INTEGER PRIMARY KEY,
   --             name VARCHAR(50),
   --             geom GEOMETRY(MULTIPOLYGON,4326)
--	)
