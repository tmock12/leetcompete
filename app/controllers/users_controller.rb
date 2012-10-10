class UsersController < ApplicationController
  expose(:user)

  def create
    if user.save
      redirect_to root_path, notice: "your account has been created"
    else
      render :new
    end
  end
end
