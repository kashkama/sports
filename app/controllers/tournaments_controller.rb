class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    if @tournament.save
      flash[:notice] = "tournament successfully created!"
      redirect_to tournaments_path
    else
      render :new
    end
  end

  private
    def tournament_params
      params.require(:tournament).permit(:team1, :team2, :date)
    end
end
