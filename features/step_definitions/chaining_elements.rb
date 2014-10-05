And(/^I get the brook row item$/) do
  @brook_row = @browser.find_element(:class => 'list_line_odd')
end

Then(/^I click view details using the row item$/) do
  view_details_brook = @brook_row.find_element(:class => 'view')
  view_details_brook.click
  sleep 5
end

Then(/^I click view details for brook by continuous chaining$/) do
  @browser.find_element(:class => 'list_line_odd').find_element(:class => 'view').click
  sleep 5
end