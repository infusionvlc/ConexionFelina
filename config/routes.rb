Rails.application.routes.draw do

  get '/league', to: 'cats#league'

  devise_for :users,
    controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  devise_scope :user do
    get '/join', to: 'users/registrations#new_volunteer'
  end

  resources :cats do
    resources :build, controller: 'cats/build'


    member do
      get 'adopt'
      get 'new_sponsor'
      post 'sponsor'
    end
  end

  resources :locations
  resources :colonies
  resources :sufferings
  resources :illnesses
  resources :tasks
  resources :assignments
  resources :turns
  resources :task_user_wizard do
    collection do
      post 'create'
    end
  end
  resources :treatment_entries

  HighVoltage.configure do |config|
    config.home_page = "home"
    config.layout = "pages"
  end
end
