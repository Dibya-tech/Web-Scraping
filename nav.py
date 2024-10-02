'''
Downloads all HTML files from the GDACS ALerts page with filters for idividual elements from 2023-01-01
Takes around 30 minutes for a full run and fetches max 100 files for the event
Change Log -
Optimized the URLS by fetching the second TD element as there are multiple hyperlinks
'''
from pathlib import Path
import os
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options
import time
import urllib.request, urllib.error, urllib.parse
from urllib.parse import urlparse, parse_qs, urlencode, urlunparse

# Set up Chrome options
chrome_options = Options()
# chrome_options.add_argument("--start-maximized")
chrome_options.add_argument("--incognito")
chrome_options.add_argument("--headless")
# chrome_options.add_argument("--no-sandbox")
# chrome_options.add_argument("--disable-extensions")

def links_iterator(filter,filter_tag):
    start_date = "2020-01-01"
    driver = webdriver.Chrome(chrome_options)
    # Open the GDACS website
    driver.get("https://www.gdacs.org/")
    # Wait until the page loads and the element is present
    wait = WebDriverWait(driver, 10)
    alert_tab = wait.until(EC.element_to_be_clickable((By.XPATH, '//*[@class="navbar-nav"]/a[2]')))
    alert_tab.click()
    # Click the Cookies banner
    btn = wait.until(EC.element_to_be_clickable((By.XPATH,'//*[@id="cookie-consent-banner"]/div/div/div[2]/a[1]')))
    btn.click()
    # driver.minimize_window()
    # Change filters to show all levels of data
    level = wait.until(
        EC.element_to_be_clickable((By.XPATH, '//select[@id="inputAlert"]'))
    )
    level.send_keys("Red")

    # Enter the date to show data after that
    date_field = wait.until(
        EC.element_to_be_clickable((By.XPATH, '//input[@id="inputDateFrom"]'))
    )
    date_field.clear()
    date_field.send_keys(start_date)
    
    # Enter filters
    check_box = wait.until(
            EC.element_to_be_clickable((By.XPATH, f'//input[@id="{filter_tag}"]'))
    )
    check_box.click()
    time.sleep(10)
    # Search Button
    search_button = wait.until(EC.element_to_be_clickable((By.XPATH,'//button[@id="btnsearch"]')))
    # search_button.click()
        # Create ActionChains object
    actions = ActionChains(driver)
    
    # Double-click the button
    actions.double_click(search_button).perform()
    print(filter,filter_tag,"checked.")
    time.sleep(10)
    
    # Download HTML files to local
    urls_data = []
    links = wait.until(
        EC.presence_of_all_elements_located((By.XPATH, '//*[@id="contentResult"]/table/tbody//td[2]/a[@href]'))
    )

    # Loop through the links and download the HTML content
    for link in links:
        href = link.get_attribute("href")
        if href:
            print(href)
            urls_data.append(urlParser(href,filter))
    # Close the WebDriver session
    time.sleep(20)
    
    htmlFilesDownloader(
        [[f"{sublist[0]}_{sublist[1]}_{sublist[3]}_{sublist[4]}", sublist[2]] for sublist in urls_data]
        ,filter)
    driver.quit()
    # TODO CSV FILE CREATION
    
def htmlFilesDownloader(urls_data,filter):
    # Create a directory to store the HTML files
    output_dir = f'latest_htmls/{filter}'
    absolute_folder_path = Path(output_dir).resolve()
    os.makedirs(absolute_folder_path, exist_ok=True)
    
    for sublist in urls_data:
        response = urllib.request.urlopen(sublist[1])
        webContent = response.read().decode('UTF-8')
        file_path = os.path.join(absolute_folder_path, f"{sublist[0]}.html")
        with open(file_path, "w", encoding="utf-8") as file:
            file.write(webContent)
        file.close
        
def urlParser(href,filter):
    parsed_url = urlparse(href)
    # Extract query parameters
    query_params = parse_qs(parsed_url.query)

    # Fetch the eventid and episodeid
    event_id   = query_params.get('eventid',   [None])[0]
    episode_id = query_params.get('episodeid', [None])[0]
    event_type = query_params.get('eventtype', [None])[0]
    # Modify the path of the URL
    new_path = f'/{filter}/report.aspx'
    impact_url = urlunparse((
    parsed_url.scheme,  # https
    parsed_url.netloc,  # www.gdacs.org
    new_path,           # /Filter/report.aspx
    parsed_url.params,  # (empty)
    urlencode(query_params, doseq=True),  # Re-encode the query params
    parsed_url.fragment # (empty)
    ))
    # print([event_id,episode_id ,impact_url,filter])
    print ([event_id,episode_id ,impact_url,filter,event_type])
    return [event_id,episode_id ,impact_url,filter,event_type]


def filterWiseFunCall():
    filters_list = ["Earthquakes","Floods","Cyclones","Volcanoes","Droughts","Wildfires"]
    filters_tags_list = ["inputChEq","inputChFl","inputChTc","inputChVo","inputChDr","inputChFf"]
    for filter,filter_tag in zip(filters_list,filters_tags_list):
        print("links_iterator",filter,filter_tag)
        links_iterator(filter,filter_tag)
    
def main():
    filterWiseFunCall()
    # Shutdown system
    # os.system("shutdown /s /t 1") 
    
if __name__ == "__main__":
    main()