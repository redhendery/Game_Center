Rails.application.routes.draw do

  root 'schedule#index'

  # Players routes
  get 'players/swarm'
  get 'players/reddevils'
  get 'players/thunder'
  get 'players/stampede'
  get 'players/admirals'

  resources: players

  # Teams routes
  get 'teams/swarm'
  get 'teams/reddevils'
  get 'teams/thunder'
  get 'teams/stampede'
  get 'teams/admirals'

  resources :teams

  # Stats routes
  get 'stats/all'
  get 'stats/swarm'
  get 'stats/reddevils'
  get 'stats/thunder'
  get 'stats/stampede'
  get 'stats/admirals'

  resources :stats

  # Schedule routes
  get 'schedule/swarm'
  get 'schedule/reddevils'
  get 'schedule/thunder'
  get 'schedule/stampede'
  get 'schedule/admirals'

  resources :schedule

end
