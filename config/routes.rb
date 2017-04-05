Rails.application.routes.draw do
  resources :players
  # get 'schedule/index'

# Schedule routes
  get 'schedule/swarm'
  get 'schedule/reddevils'
  get 'schedule/thunder'
  get 'schedule/stampede'
  get 'schedule/admirals'

  resources :schedule
  root 'schedule#index'

end
