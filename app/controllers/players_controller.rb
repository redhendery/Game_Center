class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
    @player_skaters = Player.where(position: ['Forward', 'Defence'])
    @player_gk = Player.where(position: 'GK')
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find(params[:id])
  end

  def swarm
    @swarm = Player.where(team: 'Botany Swarm')
    @swarm_skaters = Player.where(team: 'Botany Swarm').where(position: ['Forward', 'Defence'])
    @swarm_gk = Player.where(team: 'Botany Swarm').where(position: 'GK')
  end

  def reddevils
    @reddevils = Player.where(team: 'Canterbury Red Devils')
    @reddevils_skaters = Player.where(team: 'Canterbury Red Devils').where(position: ['Forward', 'Defence'])
    @reddevils_gk = Player.where(team: 'Canterbury Red Devils').where(position: 'GK')
  end

  def thunder
    @thunder = Player.where(team: 'Dunedin Thunder')
    @thunder_skaters = Player.where(team: 'Dunedin Thunder').where(position: ['Forward', 'Defence'])
    @thunder_gk = Player.where(team: 'Dunedin Thunder').where(position: 'GK')
  end

  def stampede
    @stampede = Player.where(team: 'Skycity Stampede')
    @stampede_skaters = Player.where(team: 'Skycity Stampede').where(position: ['Forward', 'Defence'])
    @stampede_gk = Player.where(team: 'Skycity Stampede').where(position: 'GK')
  end

  def admirals
    @admirals = Player.where(team: 'West Auckland Admirals')
    @admirals_skaters = Player.where(team: 'West Auckland Admirals').where(position: ['Forward', 'Defence'])
    @admirals_gk = Player.where(team: 'West Auckland Admirals').where(position: 'GK')
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
