import requests
from bs4 import BeautifulSoup
import pandas as pd
import os
from urllib.parse import urlparse, parse_qs

def download_and_append_tables(urls, output_directory='tables_output'):
    # Ensure the output directory exists
    if not os.path.exists(output_directory):
        os.makedirs(output_directory)
    
    for url in urls:
        # Parse the URL to extract event_id and episode
        parsed_url = urlparse(url)
        query_params = parse_qs(parsed_url.query)
        event_id = query_params.get('eventid', ['Unknown'])[0]
        episode_id = query_params.get('episodeid', ['Unknown'])[0]
        
        # Make the HTTP request to the URL
        response = requests.get(url)
        
        # Check if the request was successful
        if response.status_code != 200:
            print(f"Failed to retrieve the page. Status code: {response.status_code}")
            continue
        
        # Parse the HTML content using BeautifulSoup
        soup = BeautifulSoup(response.text, 'html.parser')
        
        # Find all tables in the HTML content
        tables = soup.find_all('table')
        
        # If no tables are found, handle it and skip to the next URL
        if not tables:
            print(f"No tables found on the page: {url}")
            continue
        
        # Iterate through all tables and append them to existing CSV files
        for i, table in enumerate(tables):
            # Get the table's ID, if available, otherwise use a fallback name
            table_id = table.get('id', f'table_{i+1}')
            
            # Convert the HTML table to a pandas DataFrame
            df = pd.read_html(str(table))[0]
            
            # Add Event_ID and Episode columns at the start
            df.insert(0, 'Event_ID', event_id)
            df.insert(1, 'Episode', episode_id)
            
            # Define the output file name based on the table's ID
            output_file = os.path.join(output_directory, f'{table_id}.csv')
            
            # Write the DataFrame to the CSV file with headers included
            if os.path.exists(output_file):
                df.to_csv(output_file, mode='a', header=False, index=False)
            else:
                df.to_csv(output_file, mode='w', header=True, index=False)
            
            print(f"Data from {url} appended to {output_file}")

# Example usage
urls = [
    "https://www.gdacs.org/Volcanoes/report.aspx?eventid=1000097&episodeid=1&eventtype=VO",
    "https://www.gdacs.org/Volcanoes/report.aspx?eventid=1000096&episodeid=1&eventtype=VO",
    "https://www.gdacs.org/Volcanoes/report.aspx?eventid=1000095&episodeid=2&eventtype=VO"
]
download_and_append_tables(urls)
