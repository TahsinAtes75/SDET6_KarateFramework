Feature: POST API Request

Scenario: Post method test
 Given url "https://reqres.in/api/users"
 And request {"name":"Tarik","Job Title":"Senior SDET","Salary":80000}
 When method POST
 Then status 201
 * print response

 Scenario: Post method test 1
  Given url "https://reqres.in/api"
  And path "/users"
  And request
  """
  {
  "name":"Furkan",
  "Job Title":'Teacher',
  "Age":30,
  "Gender":"Male",
  "Phone":053212345678
  }
  """
  When method POST
  Then status 201
  * print response
