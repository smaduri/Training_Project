Feature: Chaining elements

  Scenario: Get child element from immediate parent
    When I open puppies website
    And I get the brook row item
    Then I click view details using the row item

  Scenario: get child element in continuous chaining
    When I open puppies website
    Then I click view details for brook by continuous chaining