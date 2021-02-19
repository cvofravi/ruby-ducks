require 'selenium-webdriver'
require 'page-object'

Given('I am on Google WebSite') do
  @home_page = HomePage.new(@driver)
  @home_page.open
end

When('I Search for {string}') do |criteria|
   @home_page.search(criteria)
end

Then('I should Verify Text {string} is Displayed in the Results') do |searchResults|
  @results_page = GoogleResultsPage.new(@driver)
  @results_page.verifyAnaheimDucks(searchResults)

end
