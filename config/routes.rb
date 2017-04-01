Rails.application.routes.draw do
  # get 'schedule/index'

  resources :schedules

  root 'schedule#index'

# Schedule routes
  get 'schedule/swarm'
  get 'schedule/reddevils'
  get 'schedule/thunder'
  get 'schedule/stampede'
  get 'schedule/admirals'

end
