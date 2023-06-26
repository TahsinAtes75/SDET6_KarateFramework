Feature: Hello Karate

Scenario: How to print
  * print "Welcome to Karate"
  * print "another print"
  * print 2+2
  * print 5+5

  Scenario: Variables
    * def name = "Ali"
    * def age = 30
    * print name ,"is",age,"Years old"
    * print name  + "ATES"

  Scenario: Some Json Object
    * def SDET =
    """
    {
    "FirstName":"Mehmet",
    "LastName":"Guler",
    "Salary":5000
    }
    """
    * print SDET
    * print SDET.FirstName
    * print SDET.LastName
    * print SDET.Salary



