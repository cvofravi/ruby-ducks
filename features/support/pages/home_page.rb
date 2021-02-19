require "page-object"
class HomePage
  include PageObject


  def initialize(driver)
    @driver = driver
  end
  def open
    @driver.get BASE_URL
  end

  def search(criteria)
    googleSearchBox = {name: "q"}
    @driver.find_element(googleSearchBox).send_keys(criteria)
    @driver.action.send_keys("\n").perform

         #Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
    end

end