
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require_relative 'helper.rb'

#Usando o Capybara como global

World(Capybara::DSL) #Usando o Capybara como global
World(Capybara::RSpecMatchers)

#Configurar Chrome Driver

Capybara.register_driver :https_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--allow-insecure-localhost')
    options.add_argument('--ignore-certificate-errors')
  
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      capabilities: ['--disable-infobars', 'window-size=1600,1024']
    )
end

#Configurar Capybara

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #Capybara vai usar Selenium como driver padrão
    config.default_max_wait_time = 10 # Tempo máximo de espera por elemento 
    config.app_host = 'https://www.youtube.com/' #URL padrão 
end


