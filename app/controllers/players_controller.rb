class PlayersController < ApplicationController

  def index
    @player = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def swarm
    @swarm_lineup = Player.where(team: 'Botany Swarm')
    @swarm_skaters = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence'])
    @swarm_gk = Player.where(team: 'Botany Swarm').where(position: 'Goalie')
  end

  def reddevils
    @reddevils_lineup = Player.where(team: 'Canterbury Red Devils')
    @reddevils_skaters = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence'])
    @reddevils_gk = Player.where(team: 'Canterbury Red Devils').where(position: 'Goalie')
  end

  def thunder
    @thunder_lineup = Player.where(team: 'Dunedin Thunder')
    @thunder_skaters = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence'])
    @thunder_gk = Player.where(team: 'Dunedin Thunder').where(position: 'Goalie')
  end

  def stampede
    @stampede_lineup = Player.where(team: 'Skycity Stampede')
    @stampede_skaters = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence'])
    @stampede_gk = Player.where(team: 'Skycity Stampede').where(position: 'Goalie')
  end

  def admirals
    @admirals_lineup = Player.where(team: 'West Auckland Admirals')
    @admirals_skaters = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence'])
    @admirals_gk = Player.where(team: 'West Auckland Admirals').where(position: 'Goalie')
  end

end
