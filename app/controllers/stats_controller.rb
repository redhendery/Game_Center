class StatsController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all

    # Skater sort methods
    @player_skaters = Player.where(position: ['Forward', 'Defence'])
    @player_skaters_points = Player.where(position: ['Forward', 'Defence']).order(points: :desc)
    @player_skaters_goals = Player.where(position: ['Forward', 'Defence']).order(goals: :desc)
    @player_skaters_assists = Player.where(position: ['Forward', 'Defence']).order(assists: :desc)
    @player_skaters_plusMinus = Player.where(position: ['Forward', 'Defence']).order(plusMinus: :desc)

    # Goaltender sort methods
    @player_gk = Player.where(position: 'Goalie')
    @player_gk_gaa = Player.where(position: 'Goalie').order(:gaa)
    @player_gk_svs = Player.where(position: 'Goalie').order(svs: :desc)
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find(params[:id])
  end

  def all
    @skaters = Player.where(position: ['Forward', 'Defence'])
    @gk = Player.where(position: 'Goalie')
  end

  def swarm
    @swarm = Player.where(team: 'Botany Swarm')
    @swarm_skaters = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence'])
    @swarm_gk = Player.where(team: 'Botany Swarm').where(position: 'Goalie')
  end

  def reddevils
    @reddevils = Player.where(team: 'Canterbury Red Devils')
    @reddevils_skaters = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence'])
    @reddevils_gk = Player.where(team: 'Canterbury Red Devils').where(position: 'Goalie')
  end

  def thunder
    @thunder = Player.where(team: 'Dunedin Thunder')
    @thunder_skaters = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence'])
    @thunder_gk = Player.where(team: 'Dunedin Thunder').where(position: 'Goalie')
  end

  def stampede
    @stampede = Player.where(team: 'Skycity Stampede')
    @stampede_skaters = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence'])
    @stampede_gk = Player.where(team: 'Skycity Stampede').where(position: 'Goalie')
  end

  def admirals
    @admirals = Player.where(team: 'West Auckland Admirals')
    @admirals_skaters = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence'])
    @admirals_gk = Player.where(team: 'West Auckland Admirals').where(position: 'Goalie')
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
