Feature: Delete object

  Background:
    * def responseOfCreateBooking = call read("classpath://features/create_object.feature")

  Scenario: verify user can delete booking
    Given url host
    And path '/objects/'+responseOfCreateBooking.response.id
    When method delete
    Then status 200
    And print response