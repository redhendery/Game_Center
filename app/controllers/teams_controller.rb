class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  def swarm
    @swarm = Schedule.where(home: 'Botany Swarm').or(Schedule.where(away: 'Botany Swarm'))
    @upcoming = @swarm.where('date >= ?', Time.now).limit(2)
    @previous = @swarm.where('date <= ?', Time.now).limit(2)

    @swarm_skaters_points = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence']).order(points: :desc)
    @swarm_skaters_goals = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @swarm_skaters_assists = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @swarm_gk = Player.where(team: 'Botany Swarm').where(position: 'Goalie').order(svs: :desc)
  end

  def reddevils
    @reddevils = Schedule.where(home: 'Canterbury Red Devils').or(Schedule.where(away: 'Canterbury Red Devils'))
    @upcoming = @reddevils.where('date >= ?', Time.now).limit(2)
    @previous = @reddevils.where('date <= ?', Time.now).limit(2)

    @reddevils_skaters_points = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence']).order(points: :desc)
    @reddevils_skaters_goals = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @reddevils_skaters_assists = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @reddevils_gk = Player.where(team: 'Canterbury Red Devils').where(position: 'Goalie').order(svs: :desc)
  end

  def thunder
    @thunder = Schedule.where(home: 'Dunedin Thunder').or(Schedule.where(away: 'Dunedin Thunder'))
    @upcoming = @thunder.where('date >= ?', Time.now).limit(2)
    @previous = @thunder.where('date <= ?', Time.now).limit(2)

    @thunder_skaters_points = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence']).order(points: :desc)
    @thunder_skaters_goals = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @thunder_skaters_assists = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @thunder_gk = Player.where(team: 'Dunedin Thunder').where(position: 'Goalie').order(svs: :desc)
  end

  def stampede
    @stampede = Schedule.where(home: 'Skycity Stampede').or(Schedule.where(away: 'Skycity Stampede'))
    @upcoming = @stampede.where('date >= ?', Time.now).limit(2)
    @previous = @stampede.where('date <= ?', Time.now).limit(2)

    @stampede_skaters_points = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence']).order(points: :desc)
    @stampede_skaters_goals = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @stampede_skaters_assists = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @stampede_gk = Player.where(team: 'Skycity Stampede').where(position: 'Goalie').order(svs: :desc)
  end

  def admirals
    @admirals = Schedule.where(home: 'West Auckland Admirals').or(Schedule.where(away: 'West Auckland Admirals'))
    @upcoming = @admirals.where('date >= ?', Time.now).limit(2)
    @previous = @admirals.where('date <= ?', Time.now).limit(2)

    @admirals_skaters_points = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence']).order(points: :desc)
    @admirals_skaters_goals = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @admirals_skaters_assists = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @admirals_gk = Player.where(team: 'West Auckland Admirals').where(position: 'Goalie').order(svs: :desc)
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.fetch(:team, {})
    end
end
