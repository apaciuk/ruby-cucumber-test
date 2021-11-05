require 'capybara/cucumber'
require 'selenium/webdriver'

Capybara.register_driver :selenium do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 200
  capabilities = {
    :idleTimeout => 300,
    :version => 57,
    :browserName => 'chrome',
    :platform => 'Linux',
    :commandTimeout => 500,
    'chromeOptions': {
      'args' => [" --window-size=1920, 1280"],
      'prefs': {
        'credentials_enable_service': false,
        'profile': {
          'password_manager_enabled': false
        }
      }
    }
  }
  Capybara::Selenium::Driver.new(app,
                                 :browser => :remote,
                                 :url     => url,
                                 :desired_capabilities => capabilities
  )
  end
  Capybara.default_driver = :chrome
  Capybara.default_selector = :css