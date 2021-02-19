require "page-object"
class GoogleResultsPage
  include PageObject

  def initialize(driver)
    @driver = driver
  end

  def verifyAnaheimDucks(searchResults)
    validateAnaheimDucks = {xpath: "//span[contains(text(),'Official Anaheim Ducks Website | NHL.com')]"}

    actualValue = @driver.find_element(validateAnaheimDucks).text
    expectedValue= searchResults
    result = actualValue.include?expectedValue
    end

end