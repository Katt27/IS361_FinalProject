# IS361_FinalProject

# Sample Flight Data SQL

This repository contains SQL scripts for creating and populating the `Flights` table with sample flight data.

## Getting Started

### Prerequisites

- MySQL database
- SQL client or access to a MySQL server environment

### Setting up the database

1. **Create the Flights table:**
   - Run the SQL script `Sample_Flight_Data_SQL.sql` to create the `Flights` table.
   - This script will also populate the table with sample data.

### Connecting to Power BI

- To visualize this data using Power BI:
  1. Open Power BI.
  2. Choose "Get Data" and select "MySQL database".
  3. Provide the connection details for your MySQL server where the `Flights` table is stored.
  4. Load the data and build your reports.

## About the Data

The `Flights` table includes the following fields:
- `Date`: Date of the flight.
- `Tailnum`: Aircraft tail number.
- `Flight_Number`: Flight number.
- `Origin`: Origin airport.
- `Destination`: Destination airport.
- `Airline`: Airline operating the flight.
- `Engine_Type`: Type of engine.
- `Arr_Delay`: Arrival delay in minutes.

Feel free to explore and visualize the data as needed for your analyses!

