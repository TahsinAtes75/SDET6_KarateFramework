Feature: POST- PUT API Test

  Background:
    * def baseUrl = 'https://reqres.in/';
    * header Content-Type = 'application/json';

  Scenario: Create User
    Given url baseUrl
#    we can define path if URL is defined directly without "Given url baseUrl"
    And path 'api/users/2'
#    And request { "name":"Erdem Deniz", "gender":"Male", "email":"erdem@gmail.com", "status":"Active"}
#   or
    And request
    """
    {
      "name":"Adam ",
      "last_name":"Smith",
      "gender":"Male",
      "email":"adamSmith@gmail.com",
      "status":"Active"
    }
    """
    When method POST
    Then status 201
    And print response

  Scenario: Update Body by PUT
   Given url baseUrl
   And path 'api/users/2'
   And header Content-Type = 'application/json; charset=utf-8'
   And header Accept = 'application/json'
   When method GET
   Then status 200
   And print response


#    UPDATE
Given url baseUrl
And path 'api/users/2'
And request
"""
   {
      "name":"Adam ",
      "last_name":"Smith",
      "gender":"Male",
      "email":"adam@gmail.com",
      "status":"inactive"
    }
    """
And method PUT
Then status 200
# Status code is created as 200
And print response