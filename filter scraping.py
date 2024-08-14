# HARDCODE THE DATE TO FETCH ALL DATA FROM JAN 2024 2023-01-01
# Level ALL
# For each filters
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options
import time

# Set up Chrome options
chrome_options = Options()
chrome_options.add_argument("--start-maximized")
chrome_options.add_argument("--incognito")

driver = webdriver.Chrome(chrome_options)

# Open the GDACS website
driver.get("https://www.gdacs.org/")

# Wait until the page loads and the element is present
wait = WebDriverWait(driver, 10)
alert_tab = wait.until(EC.element_to_be_clickable((By.XPATH, '//*[@class="navbar-nav"]/a[2]')))
alert_tab.click()

# Change filters to show all data
level = wait.until(
    EC.element_to_be_clickable((By.XPATH, '//select[@id="inputAlert"]'))
)
level.send_keys("All")

# Enter the date to show data after that
date_field = wait.until(
    EC.element_to_be_clickable((By.XPATH, '//input[@id="inputDateFrom"]'))
)
date_field.clear()
date_field.send_keys("2023-01-01")

# Enter filters
check_box = wait.until(
    EC.element_to_be_clickable((By.XPATH, '//input[@id="inputChFl"]'))
)
check_box.click()

# Search Button
search_button = wait.until(EC.element_to_be_clickable((By.XPATH,'//button[@id="btnsearch"]')))
search_button.click()


# Additional code to interact with the page after clicking the Alerts tab...

# Close the WebDriver session
time.sleep(10)
driver.quit()
