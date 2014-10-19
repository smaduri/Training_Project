require 'selenium-webdriver'
require 'saucelabs'
include SauceLabs



Before do
  @browser = SauceLabs.selenium_driver(browser=:chrome)
  # @browser = Selenium::WebDriver.for :chrome

end


After do |scenario|
  if scenario.failed?
    @browser.save_screenshot('failed_screenshot.png')
  end
  @browser.quit
end