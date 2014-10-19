Feature: Example to show headless execution using phantomjs
  Scenario: Open google website and print title
    When I open a website using selenium with phantomjs
    Then I print the title for the website