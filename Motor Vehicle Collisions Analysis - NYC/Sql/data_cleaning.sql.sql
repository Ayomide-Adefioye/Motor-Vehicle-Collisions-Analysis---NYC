CREATE TABLE vehicle_collision (
    crash_date DATE NOT NULL,
    crash_time TIME NOT NULL,
    borough VARCHAR(20) DEFAULT NULL,
    zip_code VARCHAR(10) DEFAULT NULL,
    latitude DECIMAL(10, 8) DEFAULT NULL,
    longitude DECIMAL(11, 8) DEFAULT NULL,
    location VARCHAR(50) DEFAULT NULL,
    on_street_name VARCHAR(150) DEFAULT NULL,
    cross_street_name VARCHAR(150) DEFAULT NULL,
    off_street_name VARCHAR(150) DEFAULT NULL,
    
    number_of_persons_injured INT NOT NULL DEFAULT 0,
    number_of_persons_killed INT NOT NULL DEFAULT 0,
    number_of_pedestrians_injured INT NOT NULL DEFAULT 0,
    number_of_pedestrians_killed INT NOT NULL DEFAULT 0,
    number_of_cyclists_injured INT NOT NULL DEFAULT 0,
    number_of_cyclists_killed INT NOT NULL DEFAULT 0,
    number_of_motorists_injured INT NOT NULL DEFAULT 0,
    number_of_motorists_killed INT NOT NULL DEFAULT 0,
    
    contributing_factor_vehicle_1 VARCHAR(100) DEFAULT NULL,
    contributing_factor_vehicle_2 VARCHAR(100) DEFAULT NULL,
    contributing_factor_vehicle_3 VARCHAR(100) DEFAULT NULL,
    contributing_factor_vehicle_4 VARCHAR(100) DEFAULT NULL,
    contributing_factor_vehicle_5 VARCHAR(100) DEFAULT NULL,
    collision_id INT NOT NULL,
    
    vehicle_type_code_1 VARCHAR(100) DEFAULT NULL,
    vehicle_type_code_2 VARCHAR(100) DEFAULT NULL,
    vehicle_type_code_3 VARCHAR(100) DEFAULT NULL,
    vehicle_type_code_4 VARCHAR(100) DEFAULT NULL,
    vehicle_type_code_5 VARCHAR(100) DEFAULT NULL
);

SET GLOBAL local_infile = 1;  

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Motor_Vehicle_Collisions_Crashes.csv'
INTO TABLE vehicle_collision
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
	( 
		@v_crash_date, @v_crash_time, @v_borough, @v_zip_code, @v_latitude, @v_longitude, @v_location, @v_on_street_name,
		@v_cross_street_name, @v_off_street_name, @v_persons_injured, @v_persons_killed, @v_pedestrians_injured,@v_pedestrians_killed,
		@v_cyclists_injured, @v_cyclists_killed, @v_motorists_injured, @v_motorists_killed, @v_contrib_1, @v_contrib_2, @v_contrib_3,
        @v_contrib_4, @v_contrib_5, @v_collision_id, @v_vehicle_1, @v_vehicle_2, @v_vehicle_3, @v_vehicle_4, @v_vehicle_5
	)
SET 
	-- Format Primary Key
	collision_id = CAST(TRIM(@v_collision_id) AS UNSIGNED),
    
	-- Date and time conversion
    crash_date = STR_TO_DATE(TRIM(@v_crash_date), '%m/%d/%Y'),
    crash_time = STR_TO_DATE(TRIM(@v_crash_time), '%H:%i'),
    
    -- Basic Text Columns (Clean white spaces, set blanks to NULL)
    borough = NULLIF(TRIM(@v_borough), ''),
    zip_code = NULLIF(TRIM(@v_zip_code), ''),
    on_street_name = NULLIF(TRIM(@v_on_street_name), ''),
    cross_street_name = NULLIF(TRIM(@v_cross_street_name), ''),
    off_street_name = NULLIF(TRIM(@v_off_street_name), ''),

    -- Format Coordinates (blanks become NULL to prevent 0.00000 errors)
    latitude = NULLIF(TRIM(@v_latitude), ''),
    longitude = NULLIF(TRIM(@v_longitude), ''),
    
    -- Format Injury / Fatality (blanks defaulted to 0)
    number_of_persons_injured = IF(TRIM(@v_persons_injured) = '' , 0, CAST(TRIM(@v_persons_injured) AS SIGNED)),
    number_of_persons_killed  = IF(TRIM(@v_persons_killed) = '' ,  0, CAST(TRIM(@v_persons_killed) AS SIGNED)),
    number_of_pedestrians_injured = IF(TRIM(@v_pedestrians_injured) = '' , 0, CAST(TRIM(@v_pedestrians_injured) AS SIGNED)),
    number_of_pedestrians_killed  = IF(TRIM(@v_pedestrians_killed) = '' , 0, CAST(TRIM(@v_pedestrians_killed) AS SIGNED)),
    number_of_cyclists_injured    = IF(TRIM(@v_cyclists_injured) = '' , 0, CAST(TRIM(@v_cyclists_injured) AS SIGNED)),
    number_of_cyclists_killed     = IF(TRIM(@v_cyclists_killed) = '' , 0, CAST(TRIM(@v_cyclists_killed) AS SIGNED)),
    number_of_motorists_injured   = IF(TRIM(@v_motorists_injured) = '' , 0, CAST(TRIM(@v_motorists_injured) AS SIGNED)),
    number_of_motorists_killed    = IF(TRIM(@v_motorists_killed) = '' , 0, CAST(TRIM(@v_motorists_killed) AS SIGNED)),
    
    -- Format Contributing Factors
    contributing_factor_vehicle_1 = NULLIF(TRIM(@v_contrib_1), ''),
    contributing_factor_vehicle_2 = NULLIF(TRIM(@v_contrib_2), ''),
    contributing_factor_vehicle_3 = NULLIF(TRIM(@v_contrib_3), ''),
    contributing_factor_vehicle_4 = NULLIF(TRIM(@v_contrib_4), ''),
    contributing_factor_vehicle_5 = NULLIF(TRIM(@v_contrib_5), ''),
    
    -- Format Vehicle Type Codes
    vehicle_type_code_1 = NULLIF(TRIM(@v_vehicle_1), ''),
    vehicle_type_code_2 = NULLIF(TRIM(@v_vehicle_2), ''),
    vehicle_type_code_3 = NULLIF(TRIM(@v_vehicle_3), ''),
    vehicle_type_code_4 = NULLIF(TRIM(@v_vehicle_4), ''),
    vehicle_type_code_5 = NULLIF(TRIM(@v_vehicle_5), '');
    
    
    SET GLOBAL net_read_timeout = 600;
    SET GLOBAL net_write_timeout = 600;
    SET GLOBAL wait_timeout = 28800;
    SET GLOBAL interactive_timeout = 28800;
    
    DROP TABLE vehicle_collision;