require 'watir'
require 'page-object'
require 'selenium-webdriver'

World(PageObject::PageFactory)

BASE_URL = "http://www.google.com"
API_URL = "https://jsonplaceholder.typicode.com/posts"

