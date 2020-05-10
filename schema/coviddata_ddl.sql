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
	area_id INTEGER PRIMARY KEY,
	area_name VARCHAR(50),
	land_area NUMERIC,
	population INTEGER,
	number_of_dwellings INTEGER,
	number_of_businesses INTEGER,
	median_annual_household_income INTEGER,
	avg_monthly_rent INTEGER);

CREATE TABLE census_stats (
	area_id INTEGER PRIMARY KEY, 
	median_annual_household_income INTEGER,
	avg_monthly_rent INTEGER);

CREATE TABLE population_stats_2016 (
	area_id INTEGER PRIMARY KEY,
	area_name VARCHAR(50),
	0_4 INTEGER,
	5_9 INTEGER,
	10_14 INTEGER,
	15_19 INTEGER,
	20_24 INTEGER,
	25_29 INTEGER,
	30_34 INTEGER,
	35_39 INTEGER,
	40_44 INTEGER,
	45_49 INTEGER,
	50_54 INTEGER,
	55_59 INTEGER,
	60_64 INTEGER,
	65_69 INTEGER,
	70_74 INTEGER,
	75_79 INTEGER,
	80_84 INTEGER,
	85_and_over INTEGER,
	total_persons INTEGER,
	females INTEGER,
	males INTEGER);


CREATE TABLE heath_services (
	id INTEGER PRIMARY KEY,
	name VARCHAR(50),
	category VARCHAR(50),
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