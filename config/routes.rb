Rails.application.routes.draw do
  root to: 'calendar#index'
  get 'calendar/index'
  get 'events', to: 'event#events'
end
