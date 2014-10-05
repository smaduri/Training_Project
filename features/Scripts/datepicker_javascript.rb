# require 'selenium-webdriver'
#
#
# @browser = Selenium::WebDriver.for :chrome
#
# @browser.navigate.to 'http://adam.goucher.ca/parkcalc/'
#
#  @browser.find_element(:xpath => "//img[@alt='Pick a date']").click
#
# # input_date = "10/6/2014".strftime("%m %d %Y")
#
# @browser.execute_script("document.getElementById('EntryDate').value='10/4/2014';;window.close();")
#
# # #collect all window handles
# # window_handles =  @browser.window_handles.length
# # p "length is #{window_handles}"
# #
# # # printing the window ids
# # @browser.window_handles.map do |window|
# #   p window
# # end
# # #
# # @browser.switch_to.window(@browser.window_handles.last)
# # #
# # @browser.find_element(:link => '4').click
#
# #sleep to watch that indeed the date is picked
# sleep 5
#
# @browser.quit
#
