Given "I am signed in" do
  Fabricate(:user, email: "email@example.com", password: 'password')
  visit(new_session_path)
  step %Q(I fill in "Password" with "password")
  step %Q(I fill in "Email" with "email@example.com")
  step %Q(I press "Sign in")
end

Given "I am signed in as user2" do
  Fabricate(:user, email: "user2@example.com", password: 'password')
  visit(new_session_path)
  step %Q(I fill in "Password" with "password")
  step %Q(I fill in "Email" with "user2@example.com")
  step %Q(I press "Sign in")
end
