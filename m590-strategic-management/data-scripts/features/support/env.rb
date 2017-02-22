require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'pry'
require 'selenium\webdriver'

Capybara.app_host = 'https://www.bsg-online.com/'


Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Chrome::Profile.new
  profile["download.prompt_for_download"] = false
  profile["download.default_directory"] = Dir.pwd + "/downloads"
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :profile => profile)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

cur_year = ENV['year'|| 12]

$current_year = "Year #{cur_year}"
