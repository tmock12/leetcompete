class UsersController < ApplicationController
  expose(:user) { User.new(email: nil, password: nil, password_confirmation: nil, username: nil, password_digest: nil) }
  expose(:users) { User.all }

  def create
    if User.create(params[:user])
      redirect_to root_path, notice: "your account has been created"
    else
      render :new
    end
  end
end

