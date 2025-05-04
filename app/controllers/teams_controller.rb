# Controller handling Team CRUD operations
class TeamsController < ApplicationController
  # Set team for show, edit, update and destroy actions
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # Lists all teams
  def index
    # Get all teams from database
    @teams = Team.all
  end

  # GET /teams/1
  # Shows details of a specific team
  def show
  end

  # GET /teams/new
  # Form for creating a new team
  def new
    # Initialize new team object
    @team = Team.new
  end

  # GET /teams/1/edit
  # Form for editing an existing team
  def edit
  end

  # POST /teams
  # Creates a new team
  def create
    # Create new team with permitted parameters
    @team = Team.new(team_params)

    # Try to save the team
    if @team.save
      # Redirect to team page if save successful
      redirect_to @team, notice: 'Team was successfully created.'
    else
      # Re-render form if save failed
      render :new
    end
  end

  # PATCH/PUT /teams/1
  # Updates an existing team
  def update
    # Try to update the team with permitted parameters
    if @team.update(team_params)
      # Redirect to team page if update successful
      redirect_to @team, notice: 'Team was successfully updated.'
    else
      # Re-render form if update failed
      render :edit
    end
  end

  # DELETE /teams/1
  # Deletes a team
  def destroy
    # Delete the team
    @team.destroy
    redirect_to teams_url, notice: 'Team was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:name)
    end
end