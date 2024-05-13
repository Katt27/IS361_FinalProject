import pandas as pd

# Sample data based on the structure specified
data = {
    "Origin": ["JFK", "LAX", "ORD", "JFK", "LAX"],
    "Date": ["2024-05-01", "2024-05-02", "2024-05-01", "2024-05-02", "2024-05-01"],
    "Tail Number": ["N123AB", "N456CD", "N789EF", "N234GH", "N567IJ"],
    "Manufacturer": ["Boeing", "Airbus", "Embraer", "Boeing", "Airbus"],
    "Average Delay": [12.5, 8.3, 7.0, 15.4, 9.8],
    "Flight Count": [14, 10, 8, 12, 9]
}

# Create DataFrame
df = pd.DataFrame(data)

# Save DataFrame to CSV file
df.to_csv('flight_data.csv', index=False)
