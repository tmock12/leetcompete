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
  current_path.should == send("#{path_name}_path")
end

Then /^I should be on the home page$/ do
  current_path.should == root_path
end

Then "I should be on that competition's page" do
  competition = Competition.last
  current_path.should == competition_path(competition)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end
