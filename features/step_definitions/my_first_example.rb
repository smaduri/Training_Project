When(/^I open puppies website$/) do
  @browser.navigate.to "http://puppies.herokuapp.com/"
end

And(/^I click view details for Brook$/) do
  view_details_brook = @browser.find_element(:class => 'rounded_button')
  view_details_brook.click
end

Then(/^I can see "([^"]*)" button$/) do |arg|
  adopt_me_brook = @browser.find_element(:class => 'rounded_button')
  text_value_button = adopt_me_brook['value']
  expect(text_value_button).to eq(arg)
end

And(/^I click view details for Hanna$/) do
  view_details = @browser.find_elements(:class => 'rounded_button')
  view_details_hanna = view_details[1]
  view_details_hanna.click
end

And(/^I click view details for puppy index "([^"]*)"$/) do |arg|
  view_details = @browser.find_elements(:class => 'rounded_button')
  view_details_puppy = view_details[arg.to_i]
  view_details_puppy.click
end

And(/^I click adopt me button$/) do
  @browser.find_element(:class => 'rounded_button').click
end

And(/^I check collar and leash$/) do
  @browser.find_element(:id => 'collar').click
end

And(/^I click complete adoption$/) do
  @browser.find_element(:class => 'rounded_button').click
end

And(/^I enter "([^"]*)" and "([^"]*)" and "([^"]*)" and select "([^"]*)"$/) do |name, address, email, check|
  @browser.find_element(:id => 'order_name').send_keys(name)
  @browser.find_element(:id => 'order_address').send_keys(address)
  @browser.find_element(:id => 'order_email').send_keys(email)

  select_pay_type_element = @browser.find_element(:id => 'order_pay_type')
  select_pay_type = Selenium::WebDriver::Support::Select.new(select_pay_type_element)

  select_pay_type.select_by(:text,check)

end

And(/^I click place order$/) do
  @browser.find_element(:name => 'commit').click
end

Then(/^I should see "([^"]*)"$/) do |arg|
  success_text = @browser.find_element(:id => 'notice').text
  expect(success_text).to eq(arg)
end