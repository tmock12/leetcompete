Given /^I am on my dashboard$/ do
  visit("/dashboard")
end

Given /^I am on the home page$/ do
  visit(root_path)
end

When /^I follow "([^"]*)"$/ do |link_name|
  click_link(link_name)
end

When /^I fill in the following:$/ do |fields|
  fields.rows_hash.each do |name, value|
    step %{I fill in "#{name}" with "#{value}"}
  end
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^"]*)"$/ do |button_name|
  click_button(button_name)
end

Then /^I should be on the "([^"]*)" page$/ do |path_name|
  current_path.should == send("#{path_name.parameterize('_')}_path")
end

Then /^I should be on the home page$/ do
  current_path.should == root_path
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should not see "([^"]*)"$/ do |text|
  page.should_not have_content(text)
end

Then "show me the page" do
  save_and_open_page
end

When "I pry" do
  require 'pry'; binding.pry
end

Then "I should see a map" do
  page.should have_xpath("//div[@class='map_container']")
end
