Then "I should be on that competition's page" do
  competition = Competition.last
  current_path.should == competition_path(competition)
end

When "I visit User's competition" do
  visit competition_path(Competition.last.id)
end
