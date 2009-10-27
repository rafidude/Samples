Feature: Google Search
  In order to find out more about Cucumber
  I need to be able to search Google

  Scenario: Google search for Cucumber
    Given that I am on the Google Home Page
    When I search for Cucumber BDD
    Then I should see "cuckes.info"