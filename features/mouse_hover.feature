Feature: Mouse over example

  Scenario: Mouse over on capital one website
    Given I open capitalone website
    When I hover over credit cards
    Then I click browse all cards
    And I verify the heading as "Compare Credit Cards"