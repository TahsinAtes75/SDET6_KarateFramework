Feature: API GET request

Scenario: Sample API Get request
  Given url  "https://reqres.in/api/users/2"
  When method GET
  Then status 200
  And print response

  Scenario: API get request List of User
  * url 'https://reqres.in/api/users?page=2'
  When method GET
  Then status 200
  And print response
  And match header Content-Type =="application/json; charset=utf-8"
  And match header  Vary =="Accept-Encoding"
  And match header Date =="#present"

  Scenario: Json Body Verification
   * url "https://reqres.in/api/users/2"
    When method GET
    Then status 200
    * def response =
    """
  {
    "data": {
    "last_name": "Weaver",
    "id": 2,
    "avatar": "https://reqres.in/img/faces/2-image.jpg",
    "first_name": "Janet",
    "email": "janet.weaver@reqres.in"
  },
  "support": {
    "text": "To keep ReqRes free, contributions towards server costs are appreciated!",
    "url": "https://reqres.in/#support-heading"
  }
}
    """
    * print response
    * match response.data.id == 2
    * match response.data.email == "janet.weaver@reqres.in"

    Scenario: Request with Path
     Given url "https://reqres.in/"
     * path "api/users/"
     * param id = 7
     When method GET
     Then status 200
      And  print response