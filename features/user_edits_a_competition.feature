Feature: User edits a competition

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

  Scenario: A user edits their own competition
    Given I follow "Edit Competition"
    When I fill in the following:
      | Title       | Surf Hawaii        |
      | Description | Surfing Hawaii Bra |
    And I press "Update competition"
    Then I should be on that competition's page
    And I should see a map
    And I should see "Surf Hawaii"
