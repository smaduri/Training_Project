Given(/^I open capitalone website$/) do
  @browser.navigate.to "http://www.capitalone.com"
end

When(/^I hover over credit cards$/) do
  credit_cards_menu = @browser.find_element(:id => 'nav-primary-cc')
  @browser.action.move_to(credit_cards_menu).perform
  # sleep 5
  Selenium::WebDriver::Wait.new(timeout: 5).until do
    @browser.find_element(:link_text => 'Browse All Cards').displayed?
  end

end

Then(/^I click browse all cards$/) do
  @browser.find_element(:link_text => 'Browse All Cards').click
end

And(/^I verify the heading as "([^"]*)"$/) do |arg|
  page_heading = @browser.find_element(:id => 'page-heading').text
  expect(page_heading).to eq('Compare Credit Cards')
end