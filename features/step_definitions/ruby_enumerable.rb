And(/^I click view details for "([^"]*)"$/) do |arg|
  puppy_names = @browser.find_elements(class: 'name')
  index_hanna = puppy_names.find_index { |puppy| puppy.text == arg }
  @browser.find_elements(class: 'rounded_button')[index_hanna].click

end

Then(/^I should see the button$/) do
  p 'success'
end
