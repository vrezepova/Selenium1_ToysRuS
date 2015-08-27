require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'

#$driver = Selenium::WebDriver.for :firefox

#Functions#


Before do
  $driver = Selenium::WebDriver.for(:firefox, :profile => $default_profile)
  #$driver = Selenium::WebDriver.for :firefox
  #$driver = Selenium::WebDriver.for :chrome
  # $driver = Selenium::WebDriver.for :safari
  $driver.get $baseurl
  $driver.manage.window.maximize
  element = $driver.find_elements :xpath => "//span[@class='loggedIn']"
  if element.count > 0
    element[0].click
    element = $driver.find_element :xpath => "//div[@class='tipcontent']/span/a[contains(text(), 'Sign Out']"
    element.click
  end
end


After do
  $driver.close
  $driver.quit
end

#
$default_profile = Selenium::WebDriver::Firefox::Profile.from_name 'default'
$default_profile.add_extension("C:/Users/i15-3000/AppData/Roaming/Mozilla/Firefox/Profiles/cf9zcc50.default/extensions/{d10d0bf8-f5b5-c8b4-a8b2-2b9879e08c5d}.xpi")
#
 $default_profile.add_extension("/Users/victoriarezepova/Library/Application Support/Firefox/Profiles/xld9q81b.default/extensions/{7CEA821D-3DAB-4238-B424-BF7324531750}.xpi")





# Rspec.configure do |config|
#   config.before(:each) do
#     @driver = Selenium::WebDriver.for :firefox
#   end
#
#   config.after(:each) do
#     @driver.quit
#   end
# end

# After do |scenario|
#   # Do something after each scenario.
#   # The +scenario+ argument is optional, but
#   # if you use it, you can inspect status with
#   # the #failed?, #passed? and #exception methods.
#
#   $driver.quit
# end