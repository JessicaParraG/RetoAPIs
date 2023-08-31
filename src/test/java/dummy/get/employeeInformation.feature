Feature: Obtain employee information

  Background:
    * url 'https://dummy.restapiexample.com/'

  Scenario: get employee
    * def employee = 1
    * def path = 'api/v1/employee/'
    Given path path, employee
    When method Get
    Then status 200
    * print response