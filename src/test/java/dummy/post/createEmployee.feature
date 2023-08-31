Feature: Create an employee

  Background:
    * url 'https://dummy.restapiexample.com/'
    #* def responseCreateEmployee = read('classpath:dummy/post/request/employee_information.json')
    * request {"name":"#(name)","salary":"#(salary)","age":"#(age)"}

  Scenario Outline: create a new employee
    * def path = 'api/v1/create'
    Given path path
    When method Post
    Then status 200
    * print response

    Examples:
      | name  | salary | age |
      | test1 | 100000 | 24  |