CREATE TABLE cyclone.summary (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Countries VARCHAR(4000),
    Population_Affected VARCHAR(4000),
    Max_Wind_speed VARCHAR(4000),
    MAX_Storm_Surge VARCHAR(4000),
    Vulnerability VARCHAR(4000),
    Event_summary VARCHAR(4000)
);

CREATE TABLE cyclone.nuclear_plants (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Site VARCHAR(4000),
    Type VARCHAR(4000),
    Name VARCHAR(4000),
    Country VARCHAR(4000)
);

CREATE TABLE cyclone.locations (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Alert VARCHAR(4000),
    Date VARCHAR(4000),
    Name VARCHAR(4000),
    Country VARCHAR(4000),
    Storm_Surge_Height VARCHAR(4000)
);

CREATE TABLE cyclone.impact (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Alert VARCHAR(4000),
    N VARCHAR(4000),
    Date VARCHAR(4000),
    Max_Winds VARCHAR(4000),
    Population_in_tropical_storm VARCHAR(4000),
    Population_in_Cat1_and_above VARCHAR(4000),
    Countries VARCHAR(4000)
);

CREATE TABLE cyclone.timeline (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Alert VARCHAR(4000),
    N VARCHAR(4000),
    Date VARCHAR(4000),
    Category VARCHAR(4000),
    Max_Winds VARCHAR(4000),
    Population_in_Cat1_and_above VARCHAR(4000),
    Population_in_Tropical_Storm_and_above VARCHAR(4000),
    [Lat/Long] VARCHAR(4000),
    Countries VARCHAR(4000)
);

CREATE TABLE cyclone.countries (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Countries VARCHAR(4000)
);

CREATE TABLE cyclone.provinces (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Region_Province VARCHAR(4000),
    Country VARCHAR(4000)
);

CREATE TABLE cyclone.cities (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    Region_Province VARCHAR(4000),
    Country VARCHAR(4000),
    City_class VARCHAR(4000)
);

CREATE TABLE cyclone.airports (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    IATA_Code VARCHAR(4000),
    Elevation_in_m VARCHAR(4000),
    Usage VARCHAR(4000),
    Runway_type VARCHAR(4000),
    IFR VARCHAR(4000),
    Runway_Length_in_ft VARCHAR(4000)
);

CREATE TABLE cyclone.[ports] (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    LOCODE VARCHAR(4000),
    Country VARCHAR(4000)
);

CREATE TABLE cyclone.dams (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Reservoir VARCHAR(4000),
    Dam_Name VARCHAR(4000),
    River VARCHAR(4000),
    Year VARCHAR(4000)
);

CREATE TABLE drought.summary (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Countries VARCHAR(4000),
    Start_date VARCHAR(4000),
    Duration VARCHAR(4000),
    Impact VARCHAR(4000),
    Event_summary VARCHAR(4000)
);

CREATE TABLE drought.timeline (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Id VARCHAR(4000),
    Alert VARCHAR(4000),
    Score VARCHAR(4000),
    Date VARCHAR(4000),
    Description_impact VARCHAR(4000),
    Source VARCHAR(4000)
);

CREATE TABLE drought.countries(
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Country VARCHAR(4000)
);

CREATE TABLE drought.affected_areas (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Agri VARCHAR(4000),
    Name VARCHAR(4000),
    Country VARCHAR(4000)
);

CREATE TABLE earthquake.summary (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Depth VARCHAR(4000),
    [Lat/lon] VARCHAR(4000),
    Event_Date VARCHAR(4000),
    Population VARCHAR(4000),
    Source VARCHAR(4000),
    Inserted_at VARCHAR(4000),
    INFORM_Score VARCHAR(4000),
    Event_summary VARCHAR(4000)
);

CREATE TABLE earthquake.timeline (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    ID VARCHAR(4000),
    Alert VARCHAR(4000),
    Score VARCHAR(4000),
    Date VARCHAR(4000),
    [Mag,Depth] VARCHAR(4000),
    MMI VARCHAR(4000),
    Population VARCHAR(4000),
    Tsunami_Risk VARCHAR(4000),
    Delay VARCHAR(4000),
    Source VARCHAR(4000)
);

CREATE TABLE earthquake.impact (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Radius VARCHAR(4000),
    Population VARCHAR(4000)
);

CREATE TABLE earthquake.provinces (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Region_province VARCHAR(4000),
    Country VARCHAR(4000),
    Population VARCHAR(4000)
);

CREATE TABLE earthquake.cities (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    Region_Province VARCHAR(4000),
    Country VARCHAR(4000),
    City_class VARCHAR(4000),
    Population VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE earthquake.airports (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    IATA_Code VARCHAR(4000),
    Elevation_in_m VARCHAR(4000),
    Usage VARCHAR(4000),
    Runway_type VARCHAR(4000),
    IFR VARCHAR(4000),
    Runway_Length_in_ft VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE earthquake.[ports] (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    LOCODE VARCHAR(4000),
    Country VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE earthquake.dams (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Reservoir VARCHAR(4000),
    Dam_Name VARCHAR(4000),
    River VARCHAR(4000),
    Year VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE earthquake.nuclear_plants (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    Country VARCHAR(4000),
    Reactor VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE flood.summary (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Deaths VARCHAR(4000),
    Displaced VARCHAR(4000),
    Region VARCHAR(4000),
    Countries VARCHAR(4000),
    From_To VARCHAR(4000),
    Event_summary VARCHAR(4000)
);

CREATE TABLE flood.indicator_A (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    SendAI_Indicator_A VARCHAR(4000),
    N VARCHAR(4000),
    Country VARCHAR(4000),
    Location VARCHAR(4000)
);

CREATE TABLE flood.indicator_B (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    SendAI_Indicator_B VARCHAR(4000),
    N VARCHAR(4000),
    Country VARCHAR(4000),
    Location VARCHAR(4000)
);

CREATE TABLE flood.indicator_C (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    SendAI_Indicator_C VARCHAR(4000),
    N VARCHAR(4000),
    Country VARCHAR(4000),
    Location VARCHAR(4000)
);

CREATE TABLE flood.timeline (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    ID VARCHAR(4000),
    Alert_Color VARCHAR(4000),
    Population_affected VARCHAR(4000),
    Start_date VARCHAR(4000),
    End_date VARCHAR(4000),
    Source VARCHAR(4000)
);

CREATE TABLE dimMaster (
    event_id VARCHAR(4000),
    episode_id VARCHAR(4000),
    impact_url VARCHAR(4000),
    event_type VARCHAR(4000)
);

CREATE TABLE volcano.summary (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    [Lat/Lon] VARCHAR(4000),
    Event_date VARCHAR(4000),
    Exposed_Population30km VARCHAR(4000),
    Exposed_Population100km VARCHAR(4000),
    VEI VARCHAR(4000),
    PEI VARCHAR(4000),
    Event_summary VARCHAR(4000)
);

CREATE TABLE volcano.affected_areas (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Alert VARCHAR(4000),
    Date VARCHAR(4000),
    Name VARCHAR(4000),
    Country VARCHAR(4000),
    [Wave Height(m)] VARCHAR(4000)
);

CREATE TABLE volcano.timeline (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    ID VARCHAR(4000),
    Alert VARCHAR(4000),
    Date VARCHAR(4000),
    Eruption_details VARCHAR(4000),
    Source VARCHAR(4000)
);

CREATE TABLE volcano.impact (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Radius VARCHAR(4000),
    Population VARCHAR(4000)
);

CREATE TABLE volcano.provinces (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Region_province VARCHAR(4000),
    Country VARCHAR(4000),
    Population VARCHAR(4000)
);

CREATE TABLE volcano.cities (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    Region_Province VARCHAR(4000),
    Country VARCHAR(4000),
    City_class VARCHAR(4000),
    Population VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE volcano.airports (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    IATA_Code VARCHAR(4000),
    Elevation_in_m VARCHAR(4000),
    Usage VARCHAR(4000),
    Runway_type VARCHAR(4000),
    IFR VARCHAR(4000),
    Runway_Length_in_ft VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE volcano.[ports] (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    LOCODE VARCHAR(4000),
    Country VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE volcano.dams (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Reservoir VARCHAR(4000),
    Dam_Name VARCHAR(4000),
    River VARCHAR(4000),
    Year VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE volcano.nuclear_plants (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Site VARCHAR(4000),
    Type VARCHAR(4000),
    Name VARCHAR(4000),
    Country VARCHAR(4000)
);

CREATE TABLE wildfire.summary (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Countries VARCHAR(4000),
    Start_date_last_detected VARCHAR(4000),
    Duration VARCHAR(4000),
    People_affected VARCHAR(4000),
    Burned_area VARCHAR(4000),
    Event_summary VARCHAR(4000)
);

CREATE TABLE wildfire.impact (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    ID VARCHAR(4000),
    Alert_Color VARCHAR(4000),
    GDACS_Score VARCHAR(4000),
    Population_Affected VARCHAR(4000),
    Burned_Area VARCHAR(4000),
    Last_Update VARCHAR(4000),
    GWIS VARCHAR(4000)
);

CREATE TABLE wildfire.timeline (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Radius VARCHAR(4000),
    Population VARCHAR(4000)
);

CREATE TABLE wildfire.provinces (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Region_province VARCHAR(4000),
    Country VARCHAR(4000),
    Population VARCHAR(4000)
);

CREATE TABLE wildfire.cities (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    Region_Province VARCHAR(4000),
    Country VARCHAR(4000),
    City_class VARCHAR(4000),
    Population VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE wildfire.airport (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    IATA_Code VARCHAR(4000),
    Elevation_in_m VARCHAR(4000),
    Usage VARCHAR(4000),
    Runway_type VARCHAR(4000),
    IFR VARCHAR(4000),
    Runway_Length_in_ft VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE wildfire.[ports] (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    LOCODE VARCHAR(4000),
    Country VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE wildfire.dams (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Reservoir VARCHAR(4000),
    Dam_Name VARCHAR(4000),
    River VARCHAR(4000),
    Year VARCHAR(4000),
    Distance VARCHAR(4000)
);

CREATE TABLE wildfire.nuclear_plants (
    Event_id VARCHAR(4000),
    Episode VARCHAR(4000),
    Name VARCHAR(4000),
    Country VARCHAR(4000),
    Reactor VARCHAR(4000),
    Distance VARCHAR(4000)
);

