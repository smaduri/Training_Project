When(/^I open an excel workbook$/) do
  @workbook = RubyXL::Parser.parse('./features/support/datafiles/myworkbook.xlsx')
end

Then(/^I print the contents$/) do
  @worksheets = @workbook.sheets

  puts "# of worksheets: #{@worksheets.size}"
end