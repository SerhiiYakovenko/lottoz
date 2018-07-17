require 'cucumber'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'require_all'
require 'yaml'
require 'uuid'

# setting Capybara driver
CONFIG = YAML.load_file("#{Dir.pwd}/config.yml")
ENVIRONMENT = CONFIG['env']
DEFAULTS = YAML.load_file("#{Dir.pwd}/features/support/fixtures/default_values.yml")

Capybara.app_host = CONFIG[ENVIRONMENT]

require_all 'config'
require_all 'pages'

mobile_emulation = { deviceName: (CONFIG['device']) }
caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { mobileEmulation: mobile_emulation } )

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: caps)
end

After do
  # setting Capybara driver to reset sessions after all tests are done
  Capybara.reset_sessions!
end
