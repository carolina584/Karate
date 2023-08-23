Feature: employee crud

  Background:
    * url 'https://dummy.restapiexample.com/api/v1/'

  Scenario:	Get all employee data
    Given path 'employees'
    When method get
    Then match response.message == "Successfully! All records has been fetched."
    And status 200

  Scenario: Create a new employee
    Given path 'create'
    And request { name: 'test', salary: '123', age: '23' }
    When method post
    Then status 200
    And match response.message == "Employee created successfully"

