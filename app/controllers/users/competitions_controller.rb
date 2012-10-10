class Users::CompetitionsController < ApplicationController

  expose(:competition){ current_user.competitions.new(params[:competition]) }

  def create
    if competition.save
      redirect_to competition_path(competition)
    else
      render :new
    end
  end

end
