# require 'selenium-webdriver'
#
# @browser = Selenium::WebDriver.for :chrome
#
# @browser.navigate.to "http://adam.goucher.ca/parkcalc/"
#
# #xpath
# # select_box = @browser.find_element(:xpath => "//select[@id='Lot']")
# #css
# select_box = @browser.find_element(:css => 'select#Lot')
#
# #Normal selenium using id
# select_box = @browser.find_elements(:id => "Lot")
#
# select_element = Selenium::WebDriver::Support::Select.new(select_box)
#
# select_element.select_by(:value,'EP')
# sleep 5
# # select_pay_type.select_by(:text, check)
#
#
# @browser.quit