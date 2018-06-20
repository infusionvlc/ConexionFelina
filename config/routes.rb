Rails.application.routes.draw do

  resources 'locations'

  HighVoltage.configure do |config|
    config.home_page = 'home'
    config.layout = 'pages'
  end
end
