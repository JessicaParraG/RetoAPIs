Feature: Update an existing employee

  Background:
    * url 'https://dummy.restapiexample.com/'
    * request {"name":"#(name)","salary":"#(salary)","age":"#(age)"}

  Scenario Outline: update an employee
    * def user = 21
    * def path = 'api/v1/update/'
    Given path path, user
    When method Put
    Then status 200
    * print response

    Examples:
      | name | salary | age |
      | test | 30000  | 24  |