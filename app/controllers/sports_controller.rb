class SportsController < ApplicationController
  # before_action :set_sport, only: [:show, :edit, :update, :destroy]

  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def new
    @sport = Sport.new
  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      flash[:notice] = "sport successfully created!"
      redirect_to sports_path
    else
      render :new
    end
  end

  def update
    @sport = Sport.find(params[:id])
    if @sport.update(sport_params)
      flash[:notice] = "sport successfully updated!"
      redirect_to sports_path
    else
      render :edit
    end
  end

  def destroy
    @sport = Sport.find(params[:id])
    @sport.destroy
    flash[:notice] = "sport successfully deleted!"
    redirect_to sports_path
  end

  private
    def sport_params
      params.require(:sport).permit(:name, :image)
    end
end
