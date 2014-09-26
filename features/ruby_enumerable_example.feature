Feature: Demonstrate how ruby enumerables work
  Scenario: Clicking view details using puppy name
    When I open puppies website
    And I click view details for "Hanna"
    Then I should see the button