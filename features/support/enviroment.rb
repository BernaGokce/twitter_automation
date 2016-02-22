require 'cucumber'
require 'rspec'
require 'headless'
require 'selenium-webdriver'
require 'nokogiri'
require 'rest-client'
require 'capybara'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
#Capybara.default_selector = :xpath
Capybara.default_wait_time = 20
Capybara.ignore_hidden_elements = false
Capybara.exact = true
World(Capybara::DSL)
if Capybara.current_driver == :selenium


  headless = Headless.new
  headless.start
end