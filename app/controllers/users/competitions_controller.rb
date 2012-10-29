class Users::CompetitionsController < ApplicationController

  expose(:competition){ current_user.competitions.new(params[:competition]) }

  def create
    if competition.save
      redirect_to competition_path(competition)
    else
      render :new
    end
  end

  def destroy
    current_user.competitions.find(params[:id]).destroy
    redirect_to dashboard_path, notice: "competition has been deleted"
  end

end
