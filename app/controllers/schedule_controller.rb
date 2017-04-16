class ScheduleController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    console
    @schedule = Schedule.find(params[:id])
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
