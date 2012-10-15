When /^I select "([^\"]*)" as the date$/ do |date|
  month, day, year = date.split('/')
  find(:css, "select[id*='1i']").select(year)
  find(:css, "select[id*='2i']").select(month)
  find(:css, "select[id*='3i']").select(day.to_i.to_s)
end
