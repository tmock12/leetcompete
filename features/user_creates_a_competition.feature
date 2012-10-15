@http://www.pivotaltracker.com/story/show/37543113 @javascript
Feature: User creates a competition
  As a user
  I want to create a competition

  I make a competition with the following:
  - title (unique)
  - start date
  - end date
  - location
  - max competitors
  - registration expiration
  - type
  - description
  - registration price
  Scenario:
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
    And I should see a map
