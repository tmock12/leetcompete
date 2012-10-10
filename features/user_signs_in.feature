@http://www.pivotaltracker.com/story/show/37505255
Feature: User signs in
  Given I'm on the home page
  And I sign in with:
  - email
  - password
  Then I should be on the home page
  And I should see "sign out"

  Scenario:
    Given I am on the home page
    And the following user:
      | email    | test@example.com |
      | password | password         |
    When I follow "sign in"
    And I fill in the following:
      | Email    | test@example.com |
      | Password | password         |
    And I press "Sign in"
    Then I should be on the "dashboard" page
    And I should see "signed in as test@example.com"
    And I should see "sign out"

