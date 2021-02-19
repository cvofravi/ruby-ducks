Feature: Ducks
  Scenario: Search for Google Ducks and Verify Anaheim NHL Ducks
    Given I am on Google WebSite
    When I Search for "Ducks"
    Then I should Verify Text "Official Anaheim Ducks Website" is Displayed in the Results

