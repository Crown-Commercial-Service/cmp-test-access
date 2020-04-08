require 'rspec/expectations'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'axe/cucumber/step_definitions'


# # # # # # # # # # # # #
#
#  Modify here to add additional browser types (determine browser to use via @tags)
#
# # # # # # # # # # # # #

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome,
                                 :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                                     'chromeOptions' => {
                                         'args' => [ "--window-size=1920,1080" ],
                                         'prefs' => {
                                             'plugins.plugins_disabled' => ["Chrome PDF Viewer"]}}))
end


Capybara.default_driver = :selenium


# # # # # # # # # # # # #
#
#  E N V I R O N M E N T S
#
# # # # # # # # # # # # #
$envFM = 'https://cmp.cmpdev.crowncommercial.gov.uk/facilities-management/beta'
#$envFM = 'https://cmp.fm-preview.crowncommercial.gov.uk/facilities-management/beta'
$envLS = 'https://cmp.cmpdev.crowncommercial.gov.uk/legal-services'
#$envLS = 'https://marketplace.preview.crowncommercial.gov.uk/legal-services/sign-in'
#$envLS = 'https://cmp.fm-preview.crowncommercial.gov.uk/legal-services/'
$envMC = 'https://cmp.cmpdev.crowncommercial.gov.uk/management-consultancy/'
#$envMC = 'https://marketplace.preview.crowncommercial.gov.uk/management-consultancy/sign-in'
#$envMC = 'https://cmp.fm-preview.crowncommercial.gov.uk/management-consultancy/'

# # # # # # # # # # # # #
#
#  D A T A
#
# # # # # # # # # # # # #
$user = "autotest1@crowncommercial.gov.uk"
$p = "1Pass2!?"

