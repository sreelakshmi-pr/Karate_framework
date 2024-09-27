Feature: Get object

  Background:
    * def responseOfCreateBooking = call read("classpath://features/create_object.feature")

  Scenario: verify user can retrieve object
    Given url host
    And path '/objects/'+responseOfCreateBooking.response.id
    When method get
    Then status 200
    And print response