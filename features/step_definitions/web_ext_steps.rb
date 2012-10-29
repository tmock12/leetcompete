When /^I select "([^\"]*)" as the date$/ do |date|
  month, day, year = date.split('/')
  find(:css, "select[id*='1i']").select(year)
  find(:css, "select[id*='2i']").select(month)
  find(:css, "select[id*='3i']").select(day.to_i.to_s)
end

When /^I confirm$/ do
  page.driver.browser.switch_to.alert.accept
end

When /^I wait for (\d+) seconds?$/ do |secs|
  sleep secs.to_i
end
