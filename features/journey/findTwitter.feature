Feature: Find Twitter Website

  Scenario: Search for the website
    Given I am on the Google homepage
    Then I will search for "Twitter"
    Then I should see "Twitter"
    Then I will click the CMYLMZ link