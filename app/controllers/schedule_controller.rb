class ScheduleController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedules = Schedule.find(params[:id])
  end

  def swarm
    @swarm = Schedule.find([3, 4, 7, 8, 13, 14, 19, 20, 27, 28, 29, 30, 35, 36, 39, 40])
  end

  def reddevils
    @reddevils = Schedule.find([1, 2, 7, 8, 11, 12, 15, 16, 23, 24, 21, 32, 35, 36, 37, 38])
  end

  def thunder
    @thunder = Schedule.find([5, 6, 9, 10, 15, 16, 19, 20, 21, 22, 27, 28, 31, 32, 33, 34])
  end

  def stampede
    @stampede = Schedule.find([1, 2, 9, 10, 13, 14, 17, 18, 21, 22, 25, 26, 29, 30, 37, 38])
  end

  def admirals
    @admirals = Schedule.find([3, 4, 5, 6, 11, 12, 17, 18, 23, 24, 25, 26, 33, 34, 39, 40])
  end

end
