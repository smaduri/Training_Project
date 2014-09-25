Feature: My first example feature

  Scenario: Open puppies website and click view details for brook
    When I open puppies website
    And I click view details for Brook
    Then I can see "Adopt Me!" button

  Scenario: Open puppies website and click view details for Hanna
    When I open puppies website
    And I click view details for Hanna
    Then I can see "Adopt Me!" button

  Scenario Outline: Open puppies website and click view details for all puppies
    When I open puppies website
    And I click view details for puppy index "<index>"
    Then I can see "Adopt Me!" button

  Examples:
    |index|
    |0    |
    |1    |
    |2    |
    |3    |

  Scenario: Complete puppy adoption process
    When I open puppies website
    And I click view details for Brook
    And I click adopt me button
    And I check collar and leash
    And I click complete adoption
    And I enter "abc" and "123 street" and "abc@xyz.com" and select "Check"
    And I click place order
    Then I should see "Thank you for adopting a puppy!"
