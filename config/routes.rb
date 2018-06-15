Rails.application.routes.draw do
  get 'cats/index'

  HighVoltage.configure do |config|
    config.home_page = 'home'
    config.layout = 'pages'
  end
end
