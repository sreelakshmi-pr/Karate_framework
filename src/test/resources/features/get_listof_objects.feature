Feature: Get list of objects

  Scenario: verify user can retrieve list of objects
    Given url host
    And path "/objects"
    When method get
    Then status 200
    And print response