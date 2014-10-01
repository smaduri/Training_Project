Feature: My first example feature

  @beta_1
  @functionality1
    @fast
  Scenario: Open puppies website and click view details for brook
    When I open puppies website
    And I click view details for Brook
    Then I can see "Adopt Me!" button

  Scenario: Open puppies website and click view details for Hanna
    When I open puppies website
    And I click view details for Hanna
    Then I can see "Adopt Me!" button

  @beta_2
  @functionality2
  @slow
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

  @beta_3
  Scenario: Adopt another puppy
    When I open puppies website
    And I click view details for Brook
    And I click adopt me button
    And I click adopt another puppy
    And I click view details for Hanna
    And I click adopt me button
    And I check collar and leash indexed "0"
    And I check collar and leash indexed "1"

  Scenario Outline: Adopt another puppy scenario outline
    When I open puppies website
    And I click view details for Brook
    And I click adopt me button
    And I click adopt another puppy
    And I click view details for Hanna
    And I click adopt me button
    And I check collar and leash indexed "<index0>"
    And I check collar and leash indexed "<index1>"
   Examples:
    |index0|index1|
    |0     |1     |



  Scenario: Open puppies website and click view details for brook and get expected data from data file
    When I open puppies website
    And I click view details for Brook
    Then I can see adopt me button

