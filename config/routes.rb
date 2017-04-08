Rails.application.routes.draw do

  get 'stats/all'
  get 'stats/swarm'
  get 'stats/reddevils'
  get 'stats/thunder'
  get 'stats/stampede'
  get 'stats/admirals'

  resources :stats
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
