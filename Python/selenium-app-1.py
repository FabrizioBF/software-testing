from selenium import webdriver

"""
1.open a new Firefox browser
2.load the page at the given URL
"""

browser = webdriver.Firefox()
browser.get('http://python.org/')
