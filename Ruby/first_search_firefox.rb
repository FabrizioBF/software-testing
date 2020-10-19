Warning[:deprecated] = false
require 'rubygems'
require 'selenium-webdriver'

def setup
  @driver = Selenium::WebDriver.for :firefox
end

def teardown
  @driver.quit
end

def run
  setup
  yield
  teardown
end

run do
  @driver.get "https://www.google.com"
  puts("Page Title is #{@driver.title}")
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  puts("Sucessful Selenium Wait")
  puts("End of Program")
end
