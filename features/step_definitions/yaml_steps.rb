When(/^I open a yml file$/) do
  dir_to_yml = Dir.pwd + '/features/support/datafiles'
  @yml_hash = YAML.load_file("#{dir_to_yml}/data.yml")
end

Then(/^I print the hash$/) do
  p @yml_hash
end