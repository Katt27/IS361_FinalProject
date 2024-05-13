# Load the Excel file to calculate the highest average delays by manufacturer, aircraft, and origin
flight_data = pd.read_excel('/mnt/data/Sample_Flight_Data.xlsx')

# Calculate average delays grouped by Origin, Tailnum (Aircraft), and Airline (as a proxy for manufacturer if needed)
avg_delays = flight_data.groupby(['Origin', 'Tailnum', 'Airline']).agg({
    'Arr_Delay': 'mean'
}).reset_index()

# Sort the results to find the top entries with the highest average delays
highest_avg_delays = avg_delays.sort_values(by='Arr_Delay', ascending=False).head()

highest_avg_delays

