Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :cats do
    resources :build, controller: 'cats/build'

    member do
      get 'adopt'
      get 'new_sponsor'
      post 'sponsor'
    end
  end

  resources :adoptions
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
