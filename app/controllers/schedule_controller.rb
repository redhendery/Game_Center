class ScheduleController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
    @home_lineup = Player.where(team: @schedule.home)
    @home_points = Player.where(team: @schedule.home).order(points: :desc)
    @home_goals = Player.where(team: @schedule.home).order(goals: :desc)
    @home_assists = Player.where(team: @schedule.home).order(assists: :desc)
    @home_gaa = Player.where(team: @schedule.home).where(position: 'GK').order(gaa: :asc)

    @away_lineup = Player.where(team: @schedule.away)
    @away_points = Player.where(team: @schedule.away).order(points: :desc)
    @away_goals = Player.where(team: @schedule.away).order(goals: :desc)
    @away_assists = Player.where(team: @schedule.away).order(assists: :desc)
    @away_gaa = Player.where(team: @schedule.away).where(position: 'GK').order(gaa: :asc)
  end

  def swarm
    @swarm = Schedule.where(home: 'Botany Swarm').or(Schedule.where(away: 'Botany Swarm'))
  end

  def reddevils
    @reddevils = Schedule.where(home: 'Canterbury Red Devils').or(Schedule.where(away: 'Canterbury Red Devils'))
  end

  def thunder
    @thunder = Schedule.where(home: 'Dunedin Thunder').or(Schedule.where(away: 'Dunedin Thunder'))
  end

  def stampede
    @stampede = Schedule.where(home: 'Skycity Stampede').or(Schedule.where(away: 'Skycity Stampede'))
  end

  def admirals
    @admirals = Schedule.where(home: 'West Auckland Admirals').or(Schedule.where(away: 'West Auckland Admirals'))
  end

end
