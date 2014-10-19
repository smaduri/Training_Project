And(/^I get the title$/) do
  @actual_title = @browser.title
  p "actual title: #{@actual_title}"
end

Then(/^I assert the title$/) do
  expect(@actual_title).should == "xyz"
end