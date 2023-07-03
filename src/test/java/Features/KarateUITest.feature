Feature: Karate UI Test

  Scenario: Login to Sauce Demo Website
    Given driver "https://www.saucedemo.com/"
    * maximize()
    And input("//input[@id="user-name"]", "standard_user")
    #* delay(2000)
    And input("//input[@id="password"]", "secret_sauce")
    #* delay(2000)
    When click("//input[@id="login-button"]")
    And retry(5,1000).waitForUrl("https://www.saucedemo.com/inventory.html")
    Then match driver.url == "https://www.saucedemo.com/"
