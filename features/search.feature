Feature: Search Google
  In order to make sure people can find my documentation
  I want to check it is listed on the first page in Google

  Scenario: Searching for JS.Class docs
    Given I have opened "http://www.google.com/"
    When I search Google for "JS.Class"
    Then I should see a link to "http://jsclass.jcoglan.com/" with text "JS.Class - Ruby-style JavaScript"