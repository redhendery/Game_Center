Rails.application.routes.draw do
  get 'schedule/index'

  resources :schedules

  root 'schedule#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
