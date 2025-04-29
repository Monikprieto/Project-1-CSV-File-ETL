Flight Delays ETL Project
Project Overview
This project simulates a real-world data engineering workflow by performing an ETL (Extract, Transform, Load) process on a large dataset containing commercial flight information.
The main goal is to clean and enrich raw data and then load it into a SQL database for future querying and analysis.

Objectives
Extract flight delay data from a CSV file.
Clean, transform, and enhance the dataset (e.g., date conversions, handling missing values).
Load the processed data into a SQL database (SQLite).
Validate the data loading process.

Tools and Technologies
Python (pandas, sqlalchemy, sqlite3)
Jupyter Notebook
PostgreSQL (local database)
GitHub 

Dataset Description
Column	 Description
FlightID	Unique flight identifier.
Airline	Airline name.
FlightNumber	Flight number.
Origin 	Origin airport code (IATA).
Destination	Destination airport code (IATA).
ScheduledDeparture	Scheduled departure time.
ActualDeparture 	Actual departure time.
ScheduledArrival	Scheduled arrival time.
ActualArrival	 Actual arrival time.
DelayMinutes 	Minutes of delay (can be negative if the flight arrived early).
DelayReason 	Primary reason for the delay (e.g., "Weather," "Air Traffic Control"). Can contain null values.
Cancelled	Boolean indicator if the flight was canceled.
Diverted	Boolean indicator if the flight was diverted.
AircraftType	Aircraft type (e.g., Boeing 737, Airbus A320).
TailNumber	Aircraft registration number.
Distance	Total flight distance (in miles).

ETL Process Details
1. Extract
Load the CSV file using pandas.
Display basic statistics and check for data anomalies.

2. Transform
Convert string dates to datetime objects.
Create a new column: TotalDelay (difference between Actual and Scheduled times, if necessary).
Handle missing values in the DelayReason column.
Ensure consistent formatting across all fields.

3. Load
Create a connection to an SQLite database using sqlalchemy.
Insert the cleaned dataset into a new table named flights.
Verify that the data has been correctly inserted into the database.

Results
Clean and structured flight data stored in a SQL database.
Ready for querying, reporting, or advanced analysis.
The process reflects a realistic ETL pipeline suitable for portfolio presentation.

Project 1: CSV File ETL 
├── Project_1_CSV_FileETLRead.ipynb
├── etl_to_postgres.py
├── flight_delays_eschema.sql
├── flight_delays_sample.sql
├── README.md


Author
Monica Prieto — Data Engineer
