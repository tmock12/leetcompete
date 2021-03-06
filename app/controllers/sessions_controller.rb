class SessionsController < ApplicationController
  expose(:user) { User.where(email: params[:email]).first }

  def create
    if user && user.authenticate(params[:password])
      sign_in(user, false)
      redirect_to dashboard_path, notice: "signed in as #{user.name}"
    else
      redirect_to new_session_path, alert: "Invalid email or password"
    end
  end

  def destroy
    sign_out
    redirect_to root_path, notice: "you have signed out"
  end
end
