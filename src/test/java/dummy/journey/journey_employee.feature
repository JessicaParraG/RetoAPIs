Feature: Create, update, get and delete employee

  Scenario:
    * def createEmployee = call read('classpath:dummy/post/createEmployee.feature')
    * def responseCreate = $createEmployee.response
    * def id = $createEmployee.response.id
    * print responseCreate

    * def getEmployee = call read('classpath:dummy/get/employeeInformation.feature')
    * def responseGet = $getEmployee.response
    * print responseGet

    * def request = {"name":"test","salary":"123","age":"23"}
    * def updateEmployee = call read('classpath:dummy/put/updateEmployee.feature')
    * def responseUpdate = $updateEmployee.response
    * print responseUpdate

    * def deleteEmployee = call read('classpath:dummy/delete/deleteEmployee.feature')
    * def responseDelete = $deleteEmployee.response
    * print responseDelete