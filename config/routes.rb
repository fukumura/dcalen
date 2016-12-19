Rails.application.routes.draw do
  root to: 'calendar#index'
  get 'calendar/index'
  get 'events', to: 'event#show'
  post 'events/create', to: 'event#create'
end
