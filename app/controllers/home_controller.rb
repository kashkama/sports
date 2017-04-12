class HomeController < ApplicationController
  def index
    if admin_signed_in?
      redirect_to sports_path
    elsif user_signed_in?
      redirect_to dashboard_index_path
    elsif coach_signed_in?
      redirect_to dashboard_index_path
    else
      render :index
    end
  end
end
