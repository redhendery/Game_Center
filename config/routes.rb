Rails.application.routes.draw do

  root 'schedule#index'

  # Players routes
  get 'players/all'
  get 'players/swarm'
  get 'players/reddevils'
  get 'players/thunder'
  get 'players/stampede'
  get 'players/admirals'

  resources :players

  # Teams routes
  get 'teams/swarm'
  get 'teams/reddevils'
  get 'teams/thunder'
  get 'teams/stampede'
  get 'teams/admirals'

  resources :teams

  # Stats routes
  get 'stats/all'
  get 'stats/skaters'
  get 'stats/forwards'
  get 'stats/defenders'
  get 'stats/goaltenders'

  # Stats Swarm routes
  get 'stats/swarm'
  get 'stats/swarm/skaters'
  get 'stats/swarm/forwards'
  get 'stats/swarm/defenders'
  get 'stats/swarm/goaltenders'

  # Stats Red Devils routes
  get 'stats/reddevils'
  get 'stats/reddevils/skaters'
  get 'stats/reddevils/forwards'
  get 'stats/reddevils/defenders'
  get 'stats/reddevils/goaltenders'

  # Stats Thunder routes
  get 'stats/thunder'
  get 'stats/thunder/skaters'
  get 'stats/thunder/forwards'
  get 'stats/thunder/defenders'
  get 'stats/thunder/goaltenders'

  # Stats Stampede routes
  get 'stats/stampede'
  get 'stats/stampede/skaters'
  get 'stats/stampede/forwards'
  get 'stats/stampede/defenders'
  get 'stats/stampede/goaltenders'

  # Stats Admirals routes
  get 'stats/admirals'
  get 'stats/admirals/skaters'
  get 'stats/admirals/forwards'
  get 'stats/admirals/defenders'
  get 'stats/admirals/goaltenders'

  resources :stats

  # Schedule routes
  get 'schedule/swarm'
  get 'schedule/reddevils'
  get 'schedule/thunder'
  get 'schedule/stampede'
  get 'schedule/admirals'

  resources :schedule

end
