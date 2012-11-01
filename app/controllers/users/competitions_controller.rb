class Users::CompetitionsController < ApplicationController

  expose(:competition) { current_user.competitions.new(params[:competition]) }
  expose(:user_competition) { current_user.competitions.find(params[:id]) }

  def create
    if competition.save
      redirect_to competition_path(competition)
    else
      render :new
    end
  end

  def destroy
    user_competition.destroy
    redirect_to dashboard_path, notice: "competition has been deleted"
  end

  def update
    user_competition.update_attributes(params[:competition])
    redirect_to competition_path(user_competition)
  end

end
