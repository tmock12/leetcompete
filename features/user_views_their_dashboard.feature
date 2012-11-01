Feature: User views their dashboard
  Background:
    Given I am on the home page
    And the following user:
      | email    | test@example.com |
      | password | password         |
    And that user has the following competitions:
      | title      | description         | location |
      | Surf Event | Straight up surfing | Hawaii   |
      | Ski Event  | awesome skiiing     | Colorado |
      | Skate Pro  | skating for life    | Atlanta  |
    When I follow "sign in"
    And I fill in the following:
      | Email    | test@example.com |
      | Password | password         |
    And I press "Sign in"

  Scenario: User should see all their competitions
    Given I am on my dashboard
    Then I should see "Surf Event"
    And I should see "Straight up surfing"
    And I should see "Ski Event"
