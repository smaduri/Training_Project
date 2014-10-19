Feature: Take screenshot when scenario failed

  Scenario: Open google website and print title
    When I open puppies website
    And I get the title
    Then I assert the title