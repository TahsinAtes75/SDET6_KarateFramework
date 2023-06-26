Feature: Assert with Karate

Scenario: Matching Example
  * def name = "Nazli"
  * match name == "Nazli"
  * match name != "Ali"

  Scenario: More matching example
    * def employee =
    """
    {
    "FirstName":'Tarik',
    "LastName":'A',
    "Salary":10000,
    "Active":true
    }

    """
    * print employee
    * match employee.FirstName == 'Tarik'
    * match employee.LastName == 'A'
    * match employee.Salary == 10000
    * match employee.Active == true
    # Similar to Assert.assertEquals

  Scenario: fuzzy matching
   * def SeniorSDET =
    """
    {
    "FirstName":"Keti",
    "LastName":"Tosheva",
    "Salary":70000,
    "Active":true
    }
    """

    * match SeniorSDET.FirstName == "#string"
    * match SeniorSDET.LastName == "#string"
    * match SeniorSDET.Salary == "#number"
    * match SeniorSDET.Active == "#boolean"

