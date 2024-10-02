# # # Read the file
# # file_path = 'D:/Web Scraping/Web-Scraping/table_headers.txt'

# # with open(file_path, 'r') as file:
# #     lines = file.readlines()

# # # Process each line
# # table_data = []
# # for line in lines:
# #     # Evaluate the line to convert it from string representation to Python list
# #     try:
# #         parsed_list = eval(line.strip())
# #         table_data.append(parsed_list)
# #     except Exception as e:
# #         print(f"Error parsing line: {e}")

# # # Now you have table_data as a list of lists
# # for table in table_data:
# #     print(table)


# Absolute path
# Libraries
from pathlib import Path
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pandas as pd
import os

def list_filenames(folder_path):
    # Get a list of all files in the specified folder
    filenames = os.listdir(folder_path)
    
    return filenames

folder_path = "latest_htmls/Earthquakes" 
absolute_folder_path = os.path.abspath(folder_path)
filenames = list_filenames(absolute_folder_path)

for i,file in enumerate(filenames,start=1):
    absolute_file_path = os.path.join(absolute_folder_path, file)
    print(f"{i} file:///{absolute_file_path}")
