class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
    if params[:search]
      @teams = Team.search(params[:search]).order("created_at DESC")
    else
      @teams = Team.all.order("created_at DESC")
    end

    @search_param = params[:search]
  end
end
