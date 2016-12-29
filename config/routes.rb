Rails.application.routes.draw do
  resources :users
  get 'sessions/new'

  get 'users/new'

  root to: 'calendar#index'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'calendar/index'
  get 'events', to: 'event#show'
  post 'events/create', to: 'event#create'
  post 'events/update', to: 'event#update'

  root "users#new"
  resources :users, only: %i(new create show)
  resources :user_sessions, only: %i(new create destroy)

end
