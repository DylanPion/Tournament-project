class PlayersController < ApplicationController
  before_action :set_team, except: [:destroy]
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /teams/:team_id/players
  def index
    @players = @team.players
  end

  # GET /teams/:team_id/players/new
  def new
    @player = @team.players.build
  end

  # GET /teams/:team_id/players/1/edit
  def edit
  end

  # POST /teams/:team_id/players
  def create
    @player = @team.players.build(player_params)

    if @player.save
      redirect_to team_players_path(@team), notice: 'Player was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /teams/:team_id/players/1
  def update
    if @player.update(player_params)
      redirect_to team_players_path(@team), notice: 'Player was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /teams/:team_id/players/1
  def destroy
    @player.destroy
    redirect_to team_players_path(@player.team), notice: 'Player was successfully destroyed.'
  end

  private
    def set_team
      @team = Team.find(params[:team_id])
    end

    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:first_name, :last_name, :level, :role)
    end
end