Feature: API test

  Background:
    * baseUrl= 'https://reqres.in/api/users'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

   Scenario: Demo Api
     Given url baseUrl
     Then request {"name":"Mike","job":"TeamLead","id":"339"}
     When method POST
     Then status 201

  Scenario Outline: Api test
    Given url baseUrl
    Then request {"name":<name>,"job":<job>,"id":<id>}
    When method POST
    Then status 201
    And print response

    Examples:
      | name      | job   |id  |
      | Mike      | QA    | 340|


