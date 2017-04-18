class StatsController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all

    # Skater sort methods
    @player_skaters = Player.where(position: ['Forward', 'Defence'])
    @player_points = Player.where(position: ['Forward', 'Defence']).order(points: :desc)
    @player_goals = Player.where(position: ['Forward', 'Defence']).order(goals: :desc)
    @player_assists = Player.where(position: ['Forward', 'Defence']).order(assists: :desc)
    @player_plusMinus = Player.where(position: ['Forward', 'Defence']).order(plusMinus: :desc)

    # Goaltender sort methods
    @player_gk = Player.where(position: 'Goalie')
    @player_gaa = Player.where(position: 'Goalie').order(:gaa)
    @player_svs = Player.where(position: 'Goalie').order(svs: :desc)
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find(params[:id])
  end

  def all
    @skaters = Player.where(position: ['Forward', 'Defence'])
  end

  def forwards
    @forwards = Player.where(position: 'Forward').order(points: :desc)
  end

  def defenders
    @defenders = Player.where(position: 'Defence').order(points: :desc)
  end

  def goaltenders
    @goaltenders = Player.where(position: 'Goalie')
  end

  def swarm
    @swarm = Player.where(team: 'Botany Swarm')

    # Skater sort methods
    @swarm_skaters = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence'])
    @swarm_points = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence']).order(points: :desc)
    @swarm_goals = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @swarm_assists = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @swarm_plusMinus = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence']).order(plusMinus: :desc)

    # Goaltender sort methods
    @swarm_gk = Player.where(team: 'Botany Swarm').where(position: 'Goalie')
    @swarm_gaa = Player.where(team: 'Botany Swarm').where(position: 'Goalie').order(:gaa)
    @swarm_svs = Player.where(team: 'Botany Swarm').where(position: 'Goalie').order(svs: :desc)
  end

  def reddevils
    @reddevils = Player.where(team: 'Canterbury Red Devils')

    # Skater sort methods
    @reddevils_skaters = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence'])
    @reddevils_points = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence']).order(points: :desc)
    @reddevils_goals = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @reddevils_assists = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @reddevils_plusMinus = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence']).order(plusMinus: :desc)

    # Goaltender sort methods
    @reddevils_gk = Player.where(team: 'Canterbury Red Devils').where(position: 'Goalie')
    @reddevils_gaa = Player.where(team: 'Canterbury Red Devils').where(position: 'Goalie').order(:gaa)
    @reddevils_svs = Player.where(team: 'Canterbury Red Devils').where(position: 'Goalie').order(svs: :desc)
  end

  def thunder
    @thunder = Player.where(team: 'Dunedin Thunder')

    # Skater sort methods
    @thunder_skaters = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence'])
    @thunder_points = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence']).order(points: :desc)
    @thunder_goals = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @thunder_assists = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @thunder_plusMinus = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence']).order(plusMinus: :desc)

    # Goaltender sort methods
    @thunder_gk = Player.where(team: 'Dunedin Thunder').where(position: 'Goalie')
    @thunder_gaa = Player.where(team: 'Dunedin Thunder').where(position: 'Goalie').order(:gaa)
    @thunder_svs = Player.where(team: 'Dunedin Thunder').where(position: 'Goalie').order(svs: :desc)
  end

  def stampede
    @stampede = Player.where(team: 'Skycity Stampede')

    # Skater sort methods
    @stampede_skaters = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence'])
    @stampede_points = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence']).order(points: :desc)
    @stampede_goals = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @stampede_assists = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @stampede_plusMinus = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence']).order(plusMinus: :desc)

    # Goaltender sort methods
    @stampede_gk = Player.where(team: 'Skycity Stampede').where(position: 'Goalie')
    @stampede_gaa = Player.where(team: 'Skycity Stampede').where(position: 'Goalie').order(:gaa)
    @stampede_svs = Player.where(team: 'Skycity Stampede').where(position: 'Goalie').order(svs: :desc)
  end

  def admirals
    @admirals = Player.where(team: 'West Auckland Admirals')

    # Skater sort methods
    @admirals_skaters = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence'])
    @admirals_points = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence']).order(points: :desc)
    @admirals_goals = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence']).order(goals: :desc)
    @admirals_assists = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence']).order(assists: :desc)
    @admirals_plusMinus = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence']).order(plusMinus: :desc)

    # Goaltender sort methods
    @admirals_gk = Player.where(team: 'West Auckland Admirals').where(position: 'Goalie')
    @admirals_gaa = Player.where(team: 'West Auckland Admirals').where(position: 'Goalie').order(:gaa)
    @admirals_svs = Player.where(team: 'West Auckland Admirals').where(position: 'Goalie').order(svs: :desc)
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.fetch(:player, {})
    end
end
