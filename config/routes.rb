Rails.application.routes.draw do
  root to: 'calendar#index'
  get 'calendar/index'
end
