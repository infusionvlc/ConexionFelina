Rails.application.routes.draw do
  devise_for :users

  resources :cats
  resources :locations
  resources :colonies
  resources :sufferings
  resources :illnesses
  resources :tasks
  resources :assignments
  resources :turns

  HighVoltage.configure do |config|
    config.home_page = "home"
    config.layout = "pages"
  end
end
