Feature: create object

  Background:
    * def body = read("classpath://json//create_object.json")

  Scenario: verify user can create object
    Given url host
    And path "/objects"
    And header Content-Type = "application/json"
    And request body
    When method post
    Then status 200
    And print response