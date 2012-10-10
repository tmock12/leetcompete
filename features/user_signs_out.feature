@http://www.pivotaltracker.com/story/show/37505435
Feature: User signs out
  Given I am on the home page
  And I am signed in
  When I click "sign out"
  I should be on the home page
  And I should see "sign in"

  Scenario:
    Given I am signed in
    When I follow "sign out"
    Then I should be on the home page
    And I should see "sign in"
    And I should see "you have signed out"
