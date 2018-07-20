Rails.application.routes.draw do

  devise_for :users

  resources :cats
  resources :locations
  resources :colonies

  HighVoltage.configure do |config|
    config.home_page = 'home'
    config.layout = 'pages'
  end
end
