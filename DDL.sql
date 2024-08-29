/*
CREATE database poc;
use poc;
CREATE SCHEMA wildfire;


-- Table 1 Wilifire Summary
DROP TABLE IF EXISTS wildfire.summary;

CREATE TABLE wildfire.summary (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Countries NVARCHAR(4000),
    Start_date_last_detected NVARCHAR(4000),
    Duration NVARCHAR(4000),
    People_affected NVARCHAR(4000),
    Burned_area NVARCHAR(4000),
    Event_summary NVARCHAR(4000)
);


-- Table 2 Impact Timeline

DROP TABLE IF EXISTS poc.wildfire.impact_timeline;

CREATE TABLE poc.wildfire.impact_timeline (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    ID NVARCHAR(4000),
    Alert_Color NVARCHAR(4000),
    GDACS_Score NVARCHAR(4000),
    Population_Affected NVARCHAR(4000),
    Burned_Area NVARCHAR(4000),
    Last_Update NVARCHAR(4000),
    GWIS NVARCHAR(4000)
);

-- table 3
DROP TABLE IF EXISTS poc.wildfire.exposed_population;

CREATE TABLE poc.wildfire.exposed_population (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Radius NVARCHAR(4000),
    Population NVARCHAR(4000)
);
-- table 4
DROP TABLE IF EXISTS wildfire.affected_provinces;

CREATE TABLE wildfire.affected_provinces (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Region_province NVARCHAR(4000),
    Country NVARCHAR(4000),
    Population NVARCHAR(4000)
);
-- table 5
DROP TABLE IF EXISTS wildfire.affected_populated_places;

CREATE TABLE wildfire.affected_populated_places (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Name NVARCHAR(4000),
    Region_Province NVARCHAR(4000),
    Country NVARCHAR(4000),
    City_class NVARCHAR(4000),
    Population NVARCHAR(4000),
    Distance NVARCHAR(4000)
);
-- table 6
DROP TABLE IF EXISTS wildfire.airports;

CREATE TABLE wildfire.airports (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Name NVARCHAR(4000),
    IATA_Code NVARCHAR(4000),
    Elevation_in_m NVARCHAR(4000),
    Usage NVARCHAR(4000),
    Runway_type NVARCHAR(4000),
    IFR NVARCHAR(4000),
    Runway_Length_in_ft NVARCHAR(4000),
    Distance NVARCHAR(4000)
);
-- Table 7
DROP TABLE IF EXISTS wildfire.ports;

CREATE TABLE wildfire.ports (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Name NVARCHAR(4000),
    LOCODE NVARCHAR(4000),
    Country NVARCHAR(4000),
    Distance NVARCHAR(4000)
);

-- Table 8
DROP TABLE IF EXISTS wildfire.dams;

CREATE TABLE wildfire.dams (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Reservoir NVARCHAR(4000),
    Dam_Name NVARCHAR(4000),
    River NVARCHAR(4000),
    Year NVARCHAR(4000),
    Distance NVARCHAR(4000)
);

CREATE TABLE wildfire.nuclear_power_plant (
    Event_id nvarchar(4000),
    Episode nvarchar(4000),
    Name nvarchar(4000),
    Country nvarchar(4000),
    Reactors nvarchar(4000),
    Distance nvarchar(4000)
);


*/


-- SELECT distinct concat(TABLE_schema,'.',TABLE_NAME) FROM information_schema.columns;
SELECT * FROM wildfire.impact_timeline;
/*
EQ
-- Table 1 Summary
DROP TABLE IF exists poc.wildfire.summary;
CREATE TABLE poc.wildfire.summary (
    Event_id NVARCHAR(4000),
    Episode NVARCHAR(4000),
    Magnitude NVARCHAR(4000),
    latitude_longitude NVARCHAR(4000),
    Event_Date NVARCHAR(4000),
    Exposed_Population NVARCHAR(4000),
    INFORM_Coping_Capacity NVARCHAR(4000),
    Event_summary NVARCHAR(4000)
);
*/