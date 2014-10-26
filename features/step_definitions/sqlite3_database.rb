When(/^I connect to development sqlite3 database$/) do

  ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => './features/support/database/development_experimenting.sqlite3'
  )


  @sqlite3_connection = ActiveRecord::Base.connection
end

Then(/^I print the rows in adoptions table$/) do
  p "# of adoptions--> #{Adoption.count}"
  p "# of Puppies --> #{Puppy.count}"
  p "# of orders --> #{Order.count}"
end

Then(/^I print the rows in adoptions table executing sql$/) do
  adoptions_table = @sqlite3_connection.select_all <<-SQL
select * from adoptions
  SQL

  adoptions_table.each do |row|
    puts row
  end
end

Then(/^I print the row that has id "([^"]*)"$/) do |arg|
  row = Adoption.find_by_id(arg)
  p row
end

Then(/^I update the puppy id for the row whose id is "([^"]*)" and reset it back$/) do |arg|
  row = Adoption.find_by_id(arg)
  original_puppy_id = row['puppy_id']
  p "Original puppy id --> #{original_puppy_id}"
  row['puppy_id'] = '1000'
  row.save
  updated_row = Adoption.find_by_id(arg)
  updated_puppy_id = updated_row['puppy_id']
  p "Updated puppy id --> #{updated_puppy_id}"

  p "Resetting the puppy id to its original value"
  updated_row['puppy_id'] = original_puppy_id
  updated_row.save
  p "Printing the original puppy id --> #{Adoption.find_by_id(arg)['puppy_id']}"

end

Then(/^I print row values using columns "([^"]*)", "([^"]*)","([^"]*)"$/) do |arg1, arg2, arg3|

  adoptions_table = @sqlite3_connection.select_all <<-SQL
select * from adoptions
  SQL

  adoptions_table.each do |row|
    puts "id --> #{row[arg1]}"
    puts "cart id --> #{row[arg2]}"
    puts "puppy id --> #{row[arg3]}"
  end
end

Then(/^I print the rows in adoptions table using columns$/) do
  Adoption.all.each do |row|
    puts "id --> #{row['id']}"
    puts "cart id --> #{row['cart_id']}"
    puts "puppy id --> #{row['puppy_id']}"
  end
end