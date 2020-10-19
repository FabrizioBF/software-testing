from selenium import webdriver
from selenium.webdriver.common.keys import Keys

"""
1.open a new Firefox browser
2.load the Yahoo homepage
3.search for “software testing automation tools”
4.close the browser
"""

browser = webdriver.Firefox()

browser.get('http://www.yahoo.com')
assert 'Yahoo' in browser.title

element = browser.find_element_by_name('p')  # Find the search box
element.send_keys('software testing automation tools' + Keys.RETURN)

element.submit()
