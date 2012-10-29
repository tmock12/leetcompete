Feature: User deletes a competition
  Background:
    Given I am signed in
    When I follow "Build"
    When I fill in the following:
      | Title                   | Surf Jacksonville       |
      | Location                | Jacksonville, Florida   |
      | Max competitors         | 50                      |
      | Type                    | Surfing                 |
      | Description             | This is the description |
      | Registration Price      | $10.00                  |
    And I select "12/10/2012" as the date
    And I press "Create competition"
    Then I should be on that competition's page

  @javascript
  Scenario: I delete my competition
    When I follow "Delete Competition"
    And I confirm
    And I wait for 2 seconds
    Then I should be on the "dashboard" page
    And I should see "competition has been deleted"

