class SessionsController < ApplicationController
  expose(:user) { User.where(email: params[:email]).first }

  def create
    if user && user.authenticate(params[:password])
      sign_in(user, false)
      redirect_to root_path, notice: "signed in as #{user.name}"
    else
      redirect_to :new, alert: "Invalid email or password"
    end
  end
end
