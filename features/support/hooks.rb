require 'selenium-webdriver'
require 'saucelabs'
include SauceLabs



Before do
  @browser = SauceLabs.selenium_driver(browser=:chrome)
  # @browser = Selenium::WebDriver.for :chrome

end


After do
  @browser.quit
end