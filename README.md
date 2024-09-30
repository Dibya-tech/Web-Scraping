# Welcome to My GitHub!

Hi there! 👋 
This is the WebScraping project repo. The files are a bit clumped so I am adding a brief overview of the files and folders here.
## 🛠 Projects

### 1. [nav.py](https://github.com/Dibya-tech/Web-Scraping/blob/main/nav.py) 
- This file has the script to use selenium to go to GDACS site and then set all the filters and download the recent 100 htmls for each event. 
- The start_date has been defined in the file in variable **"start_date"**, and then we are storing the files in a folder with subfolders for each event in the variable **output_dir** in the **htmlFilesDownloader( )**.
- 

### 2. [upload_download_csv.py](https://github.com/Dibya-tech/Web-Scraping/blob/main/upload_download_csv.py) 
- Archives the previous run file in Azure
- Uploads the recent file from local to Azure dir
- Downloads all the files from axure to local target dir

### 3. [DDL.sql](https://github.com/Dibya-tech/Web-Scraping/blob/main/DDL.sql) 
- The DDLs to create the database objects

### 4. [all_tables.xlsx]([https://github.com/Dibya-tech/Web-Scraping/blob/main/DDL.sql](https://github.com/Dibya-tech/Web-Scraping/blob/main/all_tables.xlsx)) 
- The events and their table and column structure

### 5. [com eq.ipynb/com.ipynb]
- The main code that converts our Wildifire(com.ipynb) and earthquake (com_eq.ipynb) to CSV.

