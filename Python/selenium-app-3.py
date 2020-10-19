from selenium import webdriver

driver = webdriver.Firefox()

driver.get("http://www.google.com")

element = driver.find_element_by_id("gsr") 
element.send_keys("selenium") 
element.submit()
