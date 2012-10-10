@http://www.pivotaltracker.com/story/show/37505109
Feature: User signs up
  Given I am on the sign up  page
  When i submit the following:
  - username (optional)
  - email
  - password
  - password confirmation
  Then I should be on my dashboard.

  Scenario:
    Given I am on the home page
    When I follow "sign up"
    And I fill in the following:
      | Email                 | email@example.com |
      | Password              | password          |
      | Password confirmation | password          |
    And I press "Sign up"
    Then I should be on the home page
    And I should see "your account has been created"
