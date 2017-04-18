class TeamsController < ApplicationController

  def new
    @sport = Sport.find(params[:sport_id])
    @team = @sport.teams.new
  end

  def edit
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:id])
  end

  def create
    @sport = Sport.find(params[:sport_id])
    @team = @sport.teams.new(team_params)
    if @team.save
      flash[:notice] = "team successfully created!"
      redirect_to sport_path(@team.sport)
    else
      render :new
    end
  end

  def update
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:id])
    if @team.update(team_params)
      flash[:notice] = "team successfully updated!"
      redirect_to sport_path(@team.sport)
    else
      render :edit
    end
  end

  def destroy
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:id])
    @team.destroy
    flash[:notice] = "team successfully deleted!"
    redirect_to sport_path(@team.sport)
  end

  private
    def team_params
      params.require(:team).permit(:name, :image, :points, :win, :loss, :members => [])
    end
end
