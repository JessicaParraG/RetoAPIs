Feature: Delete an employee

  Background:
    * url 'https://dummy.restapiexample.com/'

  Scenario: delete an employee
    * def user = 5539
    * def path = 'api/v1/delete/'
    Given path path, user
    When method Delete
    Then status 200
    * print response