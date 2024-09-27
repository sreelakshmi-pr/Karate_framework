Feature: Update object

  Background:
    * def responseOfCreateBooking = call read("classpath://features/create_object.feature")
    * def body = read("classpath://json//update_object.json")

  Scenario: verify user can retrieve object
    Given url host
    And path '/objects/'+responseOfCreateBooking.response.id
    And header Content-Type = "application/json"
    And request body
    When method put
    Then status 200
    And print response