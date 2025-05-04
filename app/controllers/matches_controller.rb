class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_action :set_teams, only: [:new, :edit]

  # GET /matches
  def index
    @matches = Match.includes(:home_team, :away_team).order(match_date: :desc)
  end

  # GET /matches/new
  def new
    @match = Match.new
    @match.build_result # Préparer l'objet result pour le formulaire
  end

  # GET /matches/1/edit
  def edit
    @match.build_result unless @match.result
  end

  # GET /matches/1
  def show
    # Cette action doit récupérer un match spécifique et l'afficher
    # Le `set_match` a déjà assigné @match avec l'id passé dans params
  end

  # POST /matches
  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to @match, notice: 'Match was successfully created.'
    else
      set_teams
      render :new
    end
  end

  # PATCH/PUT /matches/1
  def update
    if @match.update(match_params)
      redirect_to @match, notice: 'Match was successfully updated.'
    else
      set_teams
      render :edit
    end
  end

  # DELETE /matches/1
  def destroy
    @match.destroy
    redirect_to matches_url, notice: 'Match was successfully destroyed.'
  end

  private
    def set_match
      @match = Match.find(params[:id])
    end

    def set_teams
      @teams = Team.all.order(:name)
    end

    def match_params
      params.require(:match).permit(
        :home_team_id, 
        :away_team_id, 
        :match_date,
        result_attributes: [:id, :home_score, :away_score, :winner_id]
      )
    end
end